/**
 * @file ldRigSpaceSwitchNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a space switch node.
 * @version 0.1
 * @date 2021-04-07
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

#include "ldRigSpaceSwitchNode.h"

MTypeId RigSpaceSwitchNode::id(0x01009);

MObject  RigSpaceSwitchNode::inParentMatrix;
MObject  RigSpaceSwitchNode::inParentInverseMatrix;
MObject  RigSpaceSwitchNode::inSpaceMatrix;
MObject  RigSpaceSwitchNode::inSpaceOffset;
MObject  RigSpaceSwitchNode::inSpaceWeight;
MObject  RigSpaceSwitchNode::inSpaceType;
MObject  RigSpaceSwitchNode::inSpaces;

MObject RigSpaceSwitchNode::outTransform;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigSpaceSwitchNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransform)
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
void* RigSpaceSwitchNode::creator()
{
    return new RigSpaceSwitchNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigSpaceSwitchNode::initialize()
{
    MStatus stat;
    
    inParentMatrix = addInputMatrixAttribute(stat, MString("parentMatrix"), MString("parentMatrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inParentInverseMatrix = addInputMatrixAttribute(stat, MString("parentInverseMatrix"), MString("parentInverseMatrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceMatrix = addInputMatrixAttribute(stat, MString("matrix"), MString("matrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceOffset = addInputMatrixAttribute(stat, MString("offset"), MString("offset"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceWeight = addInputFloatAttribute(stat, MString("weight"), MString("weight"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> spaceTypeEnum = {MString("SRT"), MString("ST"), MString("SR"), MString("RT"), MString("S"), MString("R"), MString("T")};
    inSpaceType = addInputEnumAttribute(stat, MString("type"), MString("type"), 0, spaceTypeEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaces = addInputCompoundAttribute(stat, MString("spaces"), MString("spaces"), vector<MObject> {inSpaceType, inSpaceWeight, inSpaceOffset, inSpaceMatrix});
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outTransform = addOutputMatrixAttribute(stat, MString("outTranform"), MString("outTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inParentMatrix, inParentInverseMatrix, inSpaces};
    vector<MObject> outputs = {outTransform};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}