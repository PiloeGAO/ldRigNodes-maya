/**
 * @file ldClavicle.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a clavicle node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MFnMatrixAttribute.h>

#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>

#include "ldRigClavicle.h"

MTypeId RigClavicle::id(0x01006);

MObject RigClavicle::inPivotTrans;
MObject RigClavicle::inTargetTrans;
MObject RigClavicle::inAlignAxis;
MObject RigClavicle::inRotationBlend;
MObject RigClavicle::inRestLength;
MObject RigClavicle::inStretchable;

MObject RigClavicle::outPivotTrans;
MObject RigClavicle::outEndTrans;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigClavicle::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;

    int alignAxis = getInt(data, inAlignAxis);
    double rotationBlend = getFloat(data, inRotationBlend);
    double restLength = getFloat(data, inRestLength);
    int stretchable = getInt(data, inStretchable);
    MTransformationMatrix pivotTrans = getMatrix(data, inPivotTrans);
    MTransformationMatrix targetTrans = getMatrix(data, inTargetTrans);

    MVector posA = pivotTrans.translation(MSpace::kWorld);
    MQuaternion rotA = pivotTrans.rotation();
    MVector posB = targetTrans.translation(MSpace::kWorld);
    MQuaternion rotB = targetTrans.rotation();

    MVector refAxis = getAxis(alignAxis);

    MVector toTarget = posB - posA;
    double currentLength = toTarget.length();
    toTarget.normalize();

    double endLength = restLength;

    MQuaternion rotBlend = slerp(rotA, rotB, rotationBlend);
    MVector orientedAxis = refAxis.rotateBy(rotBlend);
    MQuaternion correctiveRot = orientedAxis.rotateTo(toTarget);
    rotBlend *= correctiveRot;

    MVector scale = MVector::one;

    if(stretchable == 1)
    {
        double scaleFactor = currentLength / restLength;

        if(alignAxis == 0 || alignAxis == 3) { scale.x = scaleFactor; }
        else if(alignAxis == 1 || alignAxis == 4) { scale.y = scaleFactor; }
        else if(alignAxis == 2 || alignAxis == 5) { scale.z = scaleFactor; }
        endLength = currentLength;
    }

    MVector endPos = posA + toTarget * endLength;

    MTransformationMatrix trans;
    trans.setTranslation(posA, MSpace::kWorld);
    trans.setRotationQuaternion(rotBlend.x, rotBlend.y, rotBlend.z, rotBlend.w);
    double transScale[3] = {scale.x, scale.y, scale.z};
    trans.setScale(transScale, MSpace::kWorld);

    MTransformationMatrix endTrans;
    endTrans.setTranslation(endPos, MSpace::kWorld);
    endTrans.setRotationQuaternion(rotBlend.x, rotBlend.y, rotBlend.z, rotBlend.w);
    
    if(plug == outPivotTrans || plug == outEndTrans)
    {
        MDataHandle outPivotTransHandle = data.outputValue(outPivotTrans);
        outPivotTransHandle.setMMatrix(trans.asMatrix());
        outPivotTransHandle.setClean();

        MDataHandle outEndTransHandle = data.outputValue(outEndTrans);
        outEndTransHandle.setMMatrix(endTrans.asMatrix());
        outEndTransHandle.setClean();
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
void* RigClavicle::creator()
{
    return new RigClavicle();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigClavicle::initialize()
{
    MStatus stat;

    vector<MString> stretchableEnum = {MString("disable"), MString("enable")};
    inStretchable = addInputEnumAttribute(stat, MString("stretchable"), MString("stretchable"), 0, stretchableEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inRotationBlend = addInputFloatAttribute(stat, MString("rotationBlend"), MString("rotationBlend"), 0.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> alignAxisEnum = {MString("+X"), MString("+Y"), MString("+Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inAlignAxis = addInputEnumAttribute(stat, MString("alignAxis"), MString("alignAxis"), 0, alignAxisEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inRestLength = addInputFloatAttribute(stat, MString("restLength"), MString("restLength"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inPivotTrans = addInputMatrixAttribute(stat, MString("pivotTransform"), MString("pivotTransform"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTargetTrans = addInputMatrixAttribute(stat, MString("targetTransform"), MString("targetTransform"));
    if(!stat) {stat.perror("addAttribute"); return stat;}


    outPivotTrans = addOutputMatrixAttribute(stat, MString("resultPivot"), MString("resultPivot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outEndTrans = addOutputMatrixAttribute(stat, MString("resultEnd"), MString("resultEnd"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
                                inStretchable,
                                inRotationBlend,
                                inAlignAxis,
                                inRestLength,
                                inPivotTrans,
                                inTargetTrans
                            };
    vector<MObject> outputs = {outPivotTrans, outEndTrans};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}