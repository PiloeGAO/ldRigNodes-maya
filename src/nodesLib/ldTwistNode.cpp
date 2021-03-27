/**
 * @file ldTwistNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Register a twist node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MArrayDataBuilder.h>

#include <maya/MRampAttribute.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>

#include "ldTwistNode.h"

MTypeId TwistNode::id(0x01003);

MObject TwistNode::inStartRange;
MObject TwistNode::inEndRange;
MObject TwistNode::inMatrixAPos;
MObject TwistNode::inMatrixARot;
MObject TwistNode::inMatrixBPos;
MObject TwistNode::inMatrixBRot;
MObject TwistNode::inTwistCount;
MObject TwistNode::inTwistProfil;
MObject TwistNode::inAlignAxis;

MObject TwistNode::outTransforms;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus TwistNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransforms)
    {
        // Get inputs.
        MRampAttribute twistRamp = MRampAttribute(thisMObject(), inTwistProfil);

        MTransformationMatrix matrixAPos = getMatrix(data, inMatrixAPos);
        MTransformationMatrix matrixARot = getMatrix(data, inMatrixARot);
        MTransformationMatrix matrixBPos = getMatrix(data, inMatrixBPos);
        MTransformationMatrix matrixBRot = getMatrix(data, inMatrixBRot);

        int twistCount = getInt(data, inTwistCount);
        double startRange = getFloat(data, inStartRange);
        double endRange = getFloat(data, inEndRange);
        int alignAxis = getInt(data, inAlignAxis);

        // Get outputs.
        MArrayDataHandle outTransformsHandle = data.outputArrayValue(outTransforms);

        // Get inputs values.
        MVector posA = matrixAPos.translation(MSpace::kWorld);
        MVector posB = matrixBPos.translation(MSpace::kWorld);
        MQuaternion rotA = matrixARot.rotation();
        MQuaternion rotB = matrixBRot.rotation();

        // Set output.
        MArrayDataBuilder outTransformsArray = MArrayDataBuilder(outTransforms, twistCount); //Obsolete but new constructor not work.

        // Loop over twists.
        for (int i = 0; i < twistCount; i++)
        {
            // Compute the t.
            double t = (double)i / (double)(twistCount - 1);

            double tPos = t * (endRange - startRange) + startRange;

            float tRot;
            twistRamp.getValueAtPosition(t, tRot);

            // Compute the position.
            MVector pointPos;
            MVector axisDir;
            pointPosition(posA, posB, tPos, pointPos, axisDir);

            // Compute the rotation.
            MQuaternion pointRot = pointRotation(axisDir, rotA, rotB, (double)tRot, alignAxis);

            // Compute the scale.
            // TODO

            // Compute the transformation.
            MTransformationMatrix pointTrans;
            pointTrans.setTranslation(pointPos, MSpace::kWorld);
            pointTrans.setRotationQuaternion(pointRot.x, pointRot.y, pointRot.z, pointRot.w);

            // Add an output tothe transform output.
            MDataHandle dataHandle = outTransformsArray.addElement(i);
            dataHandle.setMMatrix(pointTrans.asMatrix());
        }

        outTransformsHandle.set(outTransformsArray);
        outTransformsHandle.setClean();

        data.setClean(plug);

        return MS::kSuccess;
    } else {
        return MS::kUnknownParameter;
    }
    
    return MS::kSuccess;
}

/**
 * @brief Create the node instance.
 * 
 * @return void* 
 */
void* TwistNode::creator()
{
    return new TwistNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus TwistNode::initialize()
{
    MStatus stat;

    inStartRange = addInputFloatAttribute(stat, MString("startRange"), MString("sr"), 0.1);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inEndRange = addInputFloatAttribute(stat, MString("endRange"), MString("er"), 0.9);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inMatrixAPos = addInputMatrixAttribute(stat, MString("matrixAPos"), MString("matAP"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inMatrixARot = addInputMatrixAttribute(stat, MString("matrixARot"), MString("matAR"));;
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inMatrixBPos = addInputMatrixAttribute(stat, MString("matrixBPos"), MString("matBP"));;
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inMatrixBRot = addInputMatrixAttribute(stat, MString("matrixBRot"), MString("matBR"));;
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTwistCount = addInputIntAttribute(stat, MString("twistCount"), MString("tc"), 5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTwistProfil = addInputRampAttribute(stat, MString("twistProfil"), MString("tf"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> alignAxisEnum = {MString("X"), MString("Y"), MString("Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inAlignAxis = addInputEnumAttribute(stat, MString("alignAxis"), MString("aa"), 0, alignAxisEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}


    outTransforms = addOutputArrayMatrixAttribute(stat, MString("transforms"), MString("ts"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MObject> inputs = {inStartRange,
                                inEndRange,
                                inMatrixAPos,
                                inMatrixARot,
                                inMatrixBPos,
                                inMatrixBRot,
                                inTwistCount,
                                inTwistProfil,
                                inAlignAxis
                            };
    vector<MObject> outputs = {outTransforms};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}

/**
 * @brief Compute the point position.
 * 
 * @param posA          MVector Position A.
 * @param posB          MVector Position B. 
 * @param tPos          double  Alpha.
 * @param outPos        MVector Output position.
 * @param outAxisDir    MVector Output axis direction. 
 */
void TwistNode::pointPosition(MVector posA, MVector posB, double tPos, MVector &outPos, MVector &outAxisDir)
{
    MVector axisDir = posB - posA;
    outPos = axisDir * tPos + posA;
    outAxisDir = axisDir.normal();
}

/**
 * @brief Compute the point rotation.
 * 
 * @param axisDir       MVector     The axis directioon to align the rotation.
 * @param rotA          MQuaternion Rotation A.
 * @param rotB          MQuaternion Rotation B.
 * @param tPos          double      Alpha.
 * @param alignAxis     int         Align axis.
 * @return              MQuaternion The computed rotation.
 */
MQuaternion TwistNode::pointRotation(MVector axisDir, MQuaternion rotA, MQuaternion rotB, double tPos, int alignAxis)
{
    // Define the align Axis.
    MVector refAxis = MVector::xAxis;

    if(alignAxis == 1) { refAxis = MVector::yAxis; }
    else if(alignAxis == 2) { refAxis = MVector::zAxis; }
    else if(alignAxis == 3) { refAxis = MVector::xNegAxis; }
    else if(alignAxis == 4) { refAxis = MVector::yNegAxis; }
    else if(alignAxis == 5) { refAxis = MVector::zNegAxis; }

    // Interpolate the rotation.
    MQuaternion rot = slerp(rotA, rotB, tPos);

    // Align the ref axis to the interpolated rotation.
    MVector orientedAxis = refAxis.rotateBy(rot);

    //Compute the corrective rotation to align the interpolated rotation to the main axis direction.
    MQuaternion rotToAxis = orientedAxis.rotateTo(axisDir);

    // Fix the interpolated rotation.
    rot *= rotToAxis;

    return rot;
}