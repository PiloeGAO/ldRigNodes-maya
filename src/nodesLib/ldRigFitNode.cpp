/**
 * @file ldRigFitNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a fit node.
 * @version 0.1
 * @date 2021-04-02
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

#include "ldRigFitNode.h"

MTypeId RigFitNode::id(0x01007);

MObject RigFitNode::inValue;
MObject RigFitNode::inOldMinValue;
MObject RigFitNode::inOldMaxValue;
MObject RigFitNode::inNewMinValue;
MObject RigFitNode::inNewMaxValue;
MObject RigFitNode::inClamp;

MObject RigFitNode::outValue;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigFitNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;

    if(plug == outValue)
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
void* RigFitNode::creator()
{
    return new RigFitNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigFitNode::initialize()
{
    MStatus stat;

    inValue = addInputFloatAttribute(stat, MString("value"), MString("value"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inOldMinValue = addInputFloatAttribute(stat, MString("oldMin"), MString("oldMin"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inOldMaxValue = addInputFloatAttribute(stat, MString("oldMax"), MString("oldMax"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inNewMinValue = addInputFloatAttribute(stat, MString("newMin"), MString("newMin"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inNewMaxValue = addInputFloatAttribute(stat, MString("newMax"), MString("newMax"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> clampEnum = {MString("None"), MString("clamp")};
    inClamp = addInputEnumAttribute(stat, MString("clamp"), MString("clamp"), 1, clampEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}


    outValue = addOutputFloatAttribute(stat, MString("outValue"), MString("outValue"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
        inValue,
        inOldMinValue,
        inOldMaxValue,
        inNewMinValue,
        inNewMaxValue,
        inClamp
    };
    vector<MObject> outputs = {outValue};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}