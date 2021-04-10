/**
 * @file ldRigLogicalAndNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a logical "and" node.
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

#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>

#include "ldRigLogicalAndNode.h"

MTypeId RigLogicalAndNode::id(0x01010);

MObject RigLogicalAndNode::inValue;
MObject RigLogicalAndNode::inValues;
MObject RigLogicalAndNode::inComparaisonType;
MObject RigLogicalAndNode::inSecondTerm;
MObject RigLogicalAndNode::inTrueValue;
MObject RigLogicalAndNode::inFalseValue;

MObject RigLogicalAndNode::outValue;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigLogicalAndNode::compute(const MPlug& plug, MDataBlock& data)
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
void* RigLogicalAndNode::creator()
{
    return new RigLogicalAndNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigLogicalAndNode::initialize()
{
    MStatus stat;

    inValue = addInputFloatAttribute(stat, MString("value"), MString("value"), -10000);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> comparaisonEnum = {MString("=="), MString("!="), MString(">"), MString(">="), MString("<"), MString("<=")}; 
    inComparaisonType = addInputEnumAttribute(stat, MString("comparaisonType"), MString("camparaisonType"), 0, comparaisonEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSecondTerm = addInputFloatAttribute(stat, MString("secondTerm"), MString("secondTerm"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTrueValue = addInputFloatAttribute(stat, MString("trueValue"), MString("trueValue"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFalseValue = addInputFloatAttribute(stat, MString("falseValue"), MString("falseValue"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inValues = addInputCompoundAttribute(stat, MString("values"), MString("values"), vector<MObject> {inValue});
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outValue = addOutputFloatAttribute(stat, MString("outValue"), MString("outValue"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inComparaisonType, inSecondTerm, inTrueValue, inFalseValue, inValues};
    vector<MObject> outputs = {outValue};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}