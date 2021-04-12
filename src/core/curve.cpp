/**
 * @file curve.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Class to create a curve with unlimited controllers.
 * @version 0.1
 * @date 2021-03-20
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MVector.h>
#include <maya/MVectorArray.h>
#include <maya/MQuaternion.h>
#include <maya/MRampAttribute.h>

#include "bezierCurve.h"

#include "curve.h"

using namespace std;

/**
 * @brief Blends between matrix A and B.
 * 
 * @param matrixA   MTransformationMatrix   Matrix A.
 * @param matrixB   MTransformationMatrix   Matrix B.
 * @param blend     double                  Blend factor.
 * @return          MTransformationMatrix   The result matrix.
 */
MTransformationMatrix Curve::blendTransform(MTransformationMatrix matrixA, MTransformationMatrix matrixB, double blend)
{
    // Split the datas.
    MVector aPos = matrixA.translation(MSpace::kWorld);
    MQuaternion aRot = matrixA.rotation();
    double aScl[3];
    matrixA.getScale(aScl, MSpace::kWorld);


    MVector bPos = matrixB.translation(MSpace::kWorld);
    MQuaternion bRot = matrixB.rotation();
    double bScl[3];
    matrixB.getScale(bScl, MSpace::kWorld);

    // Compute the result matrix.
    MVector rPos = (bPos - aPos) * blend + aPos;
    MQuaternion rRot = slerp(aRot, bRot, blend);
    double rScl[3];
    rScl[0] = (bScl[0] - aScl[0]) * blend + aScl[0];
    rScl[1] = (bScl[1] - aScl[1]) * blend + aScl[1];
    rScl[2] = (bScl[2] - aScl[2]) * blend + aScl[2];

    // Build the result matrix.
    MTransformationMatrix matrixR;
    matrixR.setTranslation(rPos, MSpace::kWorld);
    matrixR.setRotationQuaternion(rRot.x, rRot.y, rRot.z, rRot.w);
    matrixR.setScale(rScl, MSpace::kWorld);

    return matrixR;
}

/**
 * @brief Compute the controllers positions from fkIkBlend factor.
 * 
 */
void Curve::blendFKIKControllers()
{
    for(int i; i < controllers.size(); i++)
    {
        if(fkIkBlend == 1.0)
        {
            controllers[i] = controllersIK[i];
            controllersTangent0[i] = controllersIKTangent0[i];
            controllersTangent1[i] = controllersIKTangent1[i];
        }
        else if(fkIkBlend == 0.0)
        {
            controllers[i] = controllersFK[i];
            controllersTangent0[i] = controllersFKTangent0[i];
            controllersTangent1[i] = controllersFKTangent1[i];
        }
        else
        {
            controllers[i] = blendTransform(controllersFK[i], controllersIK[i], fkIkBlend);
            controllersTangent0[i] = blendTransform(controllersFKTangent0[i], controllersIKTangent0[i], fkIkBlend);
            controllersTangent1[i] = blendTransform(controllersFKTangent1[i], controllersIKTangent1[i], fkIkBlend);
        }
    }
}

void Curve::firstSubCurveTangent(MVector c0, MVector c1, MVector c2, double c0ScaleTan, double c1ScaleTan)
{
    /* Compute the vector and length between the controller 0 and 1. */
    MVector c0c1 = (c1 - c0);
    double c0c1Length = c0c1.length();

    /* Compute the bezier controllers positions. */
    subCurveControllers[0] = c0;
    subCurveControllers[1] = c0c1 * ((1/3) * c0ScaleTan) + c0;
    subCurveControllers[2] = ((c0c1 + (c2 - c1)).normal() *= ((c0c1Length / -3.0) * c1ScaleTan)) += c1;
    subCurveControllers[3] = c1;
}

void Curve::lastSubCurveTangent(MVector c0, MVector c1, MVector c2, double c1ScaleTan, double c2ScaleTan)
{
    /* Compute the vector and length between the controller 1 and 2. */
    MVector c1c2 = (c2 - c1);
    double c1c2Length = c1c2.length();

    /* Compute the bezier controllers positions. */
    subCurveControllers[0] = c1;
    subCurveControllers[1] = ((c1c2 + (c1 - c0)).normal() *= ((c1c2Length / 3) * c1ScaleTan)) += c1;
    subCurveControllers[2] = -c1c2 * ((1/3) * c2ScaleTan) + c2;
    subCurveControllers[3] = c2;
}

void Curve::middleSubCurveTangent(MVector c0, MVector c1, MVector c2, MVector c3, double c1ScaleTan, double c2ScaleTan)
{
    /* Compute the vector and length between the controller 1 and 2. */
    MVector c1c2 = (c2 - c1);
    double c1c2Length = c1c2.length();

    /* Compute the bezier controllers positions. */
    subCurveControllers[0] = c1;
    subCurveControllers[1] = ((c1c2 + (c1 - c0)).normal() *= ((c1c2Length / 3) * c1ScaleTan)) += c1;
    subCurveControllers[2] = -((c1c2 + (c3 - c2)).normal() *= ((c1c2Length / 3) * c2ScaleTan)) += c2;
    subCurveControllers[3] = c2;
}

/**
 * @brief Compute the pre-curve.
 * 
 */
void Curve::preCurve()
{
    preCrvPntDists[0] = 0.0;

    // Compute the sub curve count.
    int subCrvCount = controllers.capacity() - 1;

    // Compute the point cont need to store all the pre curve points.
    preCrvPntCount = subCurveResolution * subCrvCount;

    //Resize the precurve point position and tangent array if the subcurves need more points
    //than the default array size.
    if(preCrvPntCount > arraySize)
    {
        preCrvPntPosis.setLength(preCrvPntCount);
        preCrvPntTans.setLength(preCrvPntCount);
    }

    // Loop over the subcurves.
    for (int iCrv = 0; iCrv < subCrvCount; iCrv++)
    {
        if(iCrv == 0)
        {
            if(tangentMode == 0)
            {
                firstSubCurveTangent(
                    controllers[0].translation(MSpace::kWorld),
                    controllers[1].translation(MSpace::kWorld),
                    controllers[2].translation(MSpace::kWorld),
                    controllersTanScl[0],
                    controllersTanScl[1]
                );
            }
            else
            {
                subCurveControllers[0] = controllers[0].translation(MSpace::kWorld);
                subCurveControllers[1] = controllersTangent0[0].translation(MSpace::kWorld);
                subCurveControllers[2] = controllersTangent1[0].translation(MSpace::kWorld);
                subCurveControllers[3] = controllers[1].translation(MSpace::kWorld);
            }

            // Get the controller rotation.
            subCurveControllersRots[0] = controllers[0].rotation();
            subCurveControllersRots[1] = controllers[1].rotation();

            // Get the controller scale.
            double subCurveControllersScls0[3];
            controllers[0].getScale(subCurveControllersScls0, MSpace::kWorld);
            subCurveControllersScls[0] = MVector(subCurveControllersScls0);

            double subCurveControllersScls1[3];
            controllers[1].getScale(subCurveControllersScls1, MSpace::kWorld);
            subCurveControllersScls[1] = MVector(subCurveControllersScls1);
        }
        else if(iCrv == subCrvCount - 1)
        {
            if(tangentMode == 0)
            {
                lastSubCurveTangent(
                    controllers[controllers.capacity()-3].translation(MSpace::kWorld),
                    controllers[controllers.capacity()-2].translation(MSpace::kWorld),
                    controllers[controllers.capacity()-1].translation(MSpace::kWorld),
                    controllersTanScl[controllersTanScl.capacity()-2],
                    controllersTanScl[controllersTanScl.capacity()-1]
                );
            }
            else
            {
                subCurveControllers[0] = controllers[controllers.capacity()-2].translation(MSpace::kWorld);
                subCurveControllers[1] = controllersTangent0[controllersTangent0.capacity()-2].translation(MSpace::kWorld);
                subCurveControllers[2] = controllersTangent1[controllersTangent1.capacity()-2].translation(MSpace::kWorld);
                subCurveControllers[3] = controllers[controllers.capacity()-1].translation(MSpace::kWorld);
            }

            // Get the controller rotation.
            subCurveControllersRots[0] = controllers[controllers.capacity()-2].rotation();
            subCurveControllersRots[1] = controllers[controllers.capacity()-1].rotation();

            // Get the controller scale.
            double subCurveControllersScls0[3];
            controllers[controllers.capacity()-2].getScale(subCurveControllersScls0, MSpace::kWorld);
            subCurveControllersScls[0] = MVector(subCurveControllersScls0);

            double subCurveControllersScls1[3];
            controllers[controllers.capacity()-1].getScale(subCurveControllersScls1, MSpace::kWorld);
            subCurveControllersScls[1] = MVector(subCurveControllersScls1);
        }
        else
        {
            if(tangentMode == 0)
            {
                middleSubCurveTangent(
                    controllers[iCrv-1].translation(MSpace::kWorld),
                    controllers[iCrv].translation(MSpace::kWorld),
                    controllers[iCrv+1].translation(MSpace::kWorld),
                    controllers[iCrv+2].translation(MSpace::kWorld),
                    controllersTanScl[iCrv],
                    controllersTanScl[iCrv+1]
                );
            }
            else
            {
                subCurveControllers[0] = controllers[iCrv].translation(MSpace::kWorld);
                subCurveControllers[1] = controllersTangent0[iCrv].translation(MSpace::kWorld);
                subCurveControllers[2] = controllersTangent1[iCrv].translation(MSpace::kWorld);
                subCurveControllers[3] = controllers[iCrv+1].translation(MSpace::kWorld);
            }

            // Get the controller rotation.
            subCurveControllersRots[0] = controllers[iCrv].rotation();
            subCurveControllersRots[1] = controllers[iCrv+1].rotation();

            // Get the controller scale.
            double subCurveControllersScls0[3];
            controllers[iCrv].getScale(subCurveControllersScls0, MSpace::kWorld);
            subCurveControllersScls[0] = MVector(subCurveControllersScls0);

            double subCurveControllersScls1[3];
            controllers[iCrv+1].getScale(subCurveControllersScls1, MSpace::kWorld);
            subCurveControllersScls[1] = MVector(subCurveControllersScls1);
        }

        // Compute the sub curve point positions.
        for (int iPnt = 0; iPnt < subCurveResolution; iPnt++)
        {
            /* Compute the point ID to store its position in the sub curve point position array. */
            int pointID = iCrv * subCurveResolution + iPnt;

            /* Compute the point t. */
            double t = (double)iPnt / (double)subCurveResolution;

            /* For the last subcurve we compute the t to fit the last controller position. */
            if(iCrv == subCrvCount - 1)
            { t = (double)iPnt / (double)(subCurveResolution - 1); }

            // Compute the point position.
            preCrvPntPosis[pointID] = BezierCurve::pointPosition(
                subCurveControllers[0],
                subCurveControllers[1],
                subCurveControllers[2],
                subCurveControllers[3],
                t
            );

            preCrvPntCtrlStartID[pointID] = subCurveControllersIDs[0];
            preCrvPntCtrlEndID[pointID] = subCurveControllersIDs[1];
            preCrvPntSubCurveU[pointID] = t;

            preCrvPntRots[pointID] = slerp(subCurveControllersRots[0],subCurveControllersRots[1], t);
            preCrvPntScls[pointID] = (subCurveControllersScls[1] - subCurveControllersScls[0]) * t + subCurveControllersScls[0];
            
            // Defining points.
            MVector preCrvPntPosisPID = preCrvPntPosis[pointID];
            // Compute the point distance.
            if(pointID > 0)
            {
                MVector preCrvPntPosisPIDM1 = preCrvPntPosis[pointID-1];

                double nexPointDistance = (preCrvPntPosisPID - preCrvPntPosisPIDM1).length();
                preCrvPntDists[pointID] = preCrvPntDists[pointID-1] + nexPointDistance;
            }
            
            // Compute the point target.
            if(pointID == 1)
            {
                MVector preCrvPntPosisPIDM1 = preCrvPntPosis[pointID-1];
                preCrvPntTans[pointID-1] = (preCrvPntPosisPID - preCrvPntPosisPIDM1).normal();
            }
            else if (pointID > 1)
            {
                MVector preCrvPntPosisPIDM1 = preCrvPntPosis[pointID-1];
                MVector preCrvPntPosisPIDM2 = preCrvPntPosis[pointID-2];
                preCrvPntTans[pointID-1] = ((preCrvPntPosisPIDM1 - preCrvPntPosisPIDM2) + (preCrvPntPosisPID - preCrvPntPosisPIDM1)).normal();
                
                if(pointID == preCrvPntCount-1)
                { preCrvPntTans[pointID] = (preCrvPntPosisPID - preCrvPntPosisPIDM1).normal(); }
            }
        }
    }
}

/**
 * @brief Normalize the pre-curve and compute the final curve.
 * 
 */
void Curve::normalize()
{
    double targetLength = curveRestLength;

    if(stretchable)
    {
        targetLength = length();

        if(limitStretch)
        {
            double minLength = curveRestLength * minStretchFactor;
            double maxLength = curveRestLength * maxStretchFactor;

            if(targetLength < minLength)
            { targetLength = minLength; }
            else if(targetLength > maxLength)
            { targetLength = maxLength; }
        }
    }

    double lastInCrvPntDist = 0.0;
    MVector lastInCrvPntPos;
    MVector lastInCrvPntTan;

    // Loop over the curve point count.
    for (int iPnt = 0; iPnt < pointCount; iPnt++)
    {
        // Compute the point distance.
        double pointU = (double)iPnt / (double)(pointCount - 1);
        float pointUFiltered;
        distributionRamp.getValueAtPosition(pointU, pointUFiltered);

        // Filter the point U with the distribution options.
        double distU = (double)pointUFiltered * (endDistribution - startDistribution) + startDistribution;
        double pointDist = distU * targetLength;
        
        if(pointDist < length())
        {
            int minID = -1;
            int maxID = -1;
            double blend = 0.0;

            // Find the point location on the precurve.
            for (int iPt = 0; iPt < preCrvPntCount; iPt++)
            {
                if(pointDist >= preCrvPntDists[iPt-1] && pointDist <= preCrvPntDists[iPt])
                {
                    if(iPt > 0) { minID = iPt-1; }
                    else { minID = 0; }

                    maxID = iPt;
                    blend = (pointDist - preCrvPntDists[iPt-1]) / (preCrvPntDists[iPt] - preCrvPntDists[iPt-1]);
                    break;
                }
            }
            
            // Interpolate the point position.
            MVector maxPointPosis = preCrvPntPosis[maxID];
            MVector minPointPosis = preCrvPntPosis[minID];
            crvPntPosis[iPnt] =  (maxPointPosis - minPointPosis) * blend + preCrvPntPosis[minID];

            MVector maxPointTans = preCrvPntTans[maxID];
            MVector minPointTans = preCrvPntTans[minID];
            crvPntTans[iPnt] = (maxPointTans - minPointTans) * blend + preCrvPntTans[minID];

            if(preCrvPntSubCurveU[minID] > preCrvPntSubCurveU[maxID]) { crvPntSubCurveU[iPnt] = (1.0 - preCrvPntSubCurveU[minID]) * blend + preCrvPntSubCurveU[minID]; }
            else { crvPntSubCurveU[iPnt] = (preCrvPntSubCurveU[maxID] - preCrvPntSubCurveU[minID]) * blend + preCrvPntSubCurveU[minID]; }
        
            MVector lastControllersPosis = controllers[controllers.capacity()-1].translation(MSpace::kWorld);
            MVector currentCurvePoint = crvPntPosis[iPnt];
            lastInCrvPntTan = (lastControllersPosis - currentCurvePoint).normal();
            lastInCrvPntPos = crvPntPosis[iPnt];
            lastInCrvPntDist = pointDist;

            if(twistMode == 1)
            {
                pointRotation(
                    preCrvPntRots[minID],
                    preCrvPntRots[maxID],
                    crvPntTans[iPnt],
                    blend,
                    iPnt,
                    alignAxis
                );
            }

            crvPntScls[iPnt] = MVector::one;
            if(scaleMode == 1)
            {
                double preCrvPntSclsMinID[3] = {preCrvPntScls[minID].x, preCrvPntScls[minID].y, preCrvPntScls[minID].z};
                double preCrvPntSclsMaxID[3] = {preCrvPntScls[maxID].x, preCrvPntScls[maxID].y, preCrvPntScls[maxID].z};
                pointScale(
                    preCrvPntSclsMinID,
                    preCrvPntSclsMaxID,
                    blend,
                    iPnt
                );
            }
        }
        // Extend the curve with the last point tangent.
        else
        {
            double extendDist = (pointDist - lastInCrvPntDist);
            crvPntPosis[iPnt] = lastInCrvPntPos + lastInCrvPntTan * extendDist;
            crvPntTans[iPnt] = lastInCrvPntTan;
        }
        
        if(twistMode == 0)
        {
            pointRotation(
                controllers[0].rotation(),
                controllers[controllers.capacity()-1].rotation(),
                crvPntTans[iPnt],
                pointU,
                iPnt,
                alignAxis
            );
        }

        double controller0Scale[3];
        controllers[0].getScale(controller0Scale, MSpace::kWorld);

        double controllerLastScale[3];
        controllers[controllers.capacity()-1].getScale(controllerLastScale, MSpace::kWorld);

        if(scaleMode == 0)
        {
            pointScale(
                controller0Scale,
                controllerLastScale,
                pointU,
                iPnt
            );
        }

        if(stretchNSquatchMode)
        {
            pointStretchNSquatch(
                pointU,
                iPnt,
                controllers[0].translation(MSpace::kWorld),
                controllers[controllers.capacity()-1].translation(MSpace::kWorld),
                alignAxis
            );
        }
    }    
}

/**
 * @brief Compute the point rotation based on t.
 * 
 * @param quatC1        MQuaternion Controller 1 rotation.
 * @param quatC2        MQuaternion Controller 2 rotation.
 * @param pointTarget   MVector     Point tangent.
 * @param t             double      Point position
 * @param pointID       int         Point ID.
 * @param alignAxis     int         Align axis.
 */
void Curve::pointRotation(MQuaternion quatC1, MQuaternion quatC2, MVector pointTarget, double t, int pointID, int alignAxis)
{
    float tFiltered;
    twistRamp.getValueAtPosition(t, tFiltered);

    /* Define the align axis. */
    MVector refAxis = MVector::xAxis;
    if(alignAxis == 1)
    { refAxis = MVector::yAxis; }
    if(alignAxis == 2)
    { refAxis = MVector::zAxis; }
    if(alignAxis == 3)
    { refAxis = MVector::xNegAxis; }
    if(alignAxis == 4)
    { refAxis = MVector::yNegAxis; }
    if(alignAxis == 5)
    { refAxis = MVector::yNegAxis; }

    /* Interpolate the rotation of A and B. */
    crvPntRots[pointID] = slerp(quatC1, quatC2, (double) tFiltered);
    
    /* Alignt he axis Y to the interpolate slerp result. */
    MVector orientedAxis = refAxis.rotateBy(crvPntRots[pointID]);

    /* Compute the corrective rotation. */
    MQuaternion correctiveRot = orientedAxis.rotateTo(pointTarget);

    /* Compute the final rotation. */
    crvPntRots[pointID] *= correctiveRot;
}

/**
 * @brief Compute the point scale based on t.
 * 
 * @param scaleC1 double[3] Controller 1 scale.
 * @param scaleC2 double[3] Controller 2 scale. 
 * @param t       double    Point position.
 * @param pointID int       Point ID.
 */
void Curve::pointScale(double scaleC1[3], double scaleC2[3], double t, int pointID)
{
    crvPntScls[pointID] = MVector(
        scaleC1[0]*(1.0-t) + scaleC2[0]*t,
        scaleC1[1]*(1.0-t) + scaleC2[1]*t,
        scaleC1[2]*(1.0-t) + scaleC2[2]*t
    );
}

double Curve::fit(double value, double oldMin, double oldMax, double newMin, double newMax)
{
    return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

void Curve::pointStretchNSquatch(double t, int pointID, MVector firstControllerPos, MVector lastControllerPos, int alignAxis)
{
    double currentLength = (lastControllerPos - firstControllerPos).length();
    double restLength = ctrlRestLength;

    double minLength = restLength * minStretchFactor;
    double maxLength = restLength * maxStretchFactor;

    double axis0Scale = 1.0;
    double axis1Scale = 1.0;

    float stretchRampValue;
    stretchRamp.getValueAtPosition(t, stretchRampValue);
    float squatchRampValue;
    squatchRamp.getValueAtPosition(t, squatchRampValue);

    double stretchAxis0ScaleFiltered = fit((double)stretchRampValue, 0, 1, 1, stretchAxis0Scale);
    double stretchAxis1ScaleFiltered = fit((double)stretchRampValue, 0, 1, 1, stretchAxis1Scale);
    double squatchAxis0ScaleFiltered = fit((double)squatchRampValue, 0, 1, 1, squatchAxis0Scale);
    double squatchAxis1ScaleFiltered = fit((double)squatchRampValue, 0, 1, 1, squatchAxis1Scale);

    if(currentLength > maxLength)
    {
        axis0Scale = stretchAxis0ScaleFiltered;
        axis1Scale = stretchAxis1ScaleFiltered;
    }
    else if(currentLength < minLength)
    {
        axis0Scale = squatchAxis0ScaleFiltered;
        axis1Scale = squatchAxis1ScaleFiltered;
    }
    else
    {
        if(currentLength >= restLength)
        {
            axis0Scale = fit(currentLength, restLength, maxLength, 1.0, stretchAxis0ScaleFiltered);
            axis1Scale = fit(currentLength, restLength, maxLength, 1.0, stretchAxis1ScaleFiltered);
        }
        else
        {
            axis0Scale = fit(currentLength, minLength, restLength, squatchAxis0ScaleFiltered, 1.0);
            axis1Scale = fit(currentLength, minLength, restLength, squatchAxis1ScaleFiltered, 1.0);
        }
    }

    if(alignAxis == 0 || alignAxis == 3)
    {
        crvPntScls[pointID].x *= 1.0;
        crvPntScls[pointID].y *= axis0Scale;
        crvPntScls[pointID].z *= axis1Scale;
    }
    else if (alignAxis == 1 || alignAxis == 4)
    {
        crvPntScls[pointID].x *= axis0Scale;
        crvPntScls[pointID].y *= 1.0;
        crvPntScls[pointID].z *= axis1Scale;
    }
    else if (alignAxis == 2 || alignAxis == 5)
    {
        crvPntScls[pointID].x *= axis0Scale;
        crvPntScls[pointID].y *= axis1Scale;
        crvPntScls[pointID].z *= 1.0;
    }
}

/**
 * @brief Get the curve length.
 * 
 * @return double Curve length.
 */
double Curve::length()
{
    return preCrvPntDists[preCrvPntCount-1];
}

/**
 * @brief Add controllers to the curve.
 * 
 * @param inControllers vector<MTransformationMatrix> List of controllers.
 */
void Curve::addControllers(vector<MTransformationMatrix> inControllers)
{
    controllers = inControllers;
}

/**
 * @brief Add controllers tangent scales.
 * 
 * @param inControllersTanScl vector<double> List of controllers tangent scales.
 */
void Curve::addControllersTanScl(vector<double> inControllersTanScl)
{
    controllersTanScl = inControllersTanScl;
}

/**
 * @brief Get the Point Position.
 * 
 * @param pID int Point ID.
 * @return MVector Point position.
 */
MVector Curve::getPointPosis(int pID)
{
    return crvPntPosis[pID];
}

/**
 * @brief Get the Point Rotation.
 * 
 * @param pID Point ID.
 * @return MQuaternion Point rotation.
 */
MQuaternion Curve::getPointRots(int pID)
{
    return crvPntRots[pID];
}

/**
 * @brief Get the Point Scale.
 * 
 * @param pID Point ID.
 * @return MVector Point scale.
 */
MVector Curve::getPointScale(int pID)
{
    return crvPntScls[pID];
}