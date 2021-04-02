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

#include "ldClavicle.h"

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
    
    if(plug == outPivotTrans || plug == outEndTrans)
    {
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