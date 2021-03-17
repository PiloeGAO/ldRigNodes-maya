/**
 * @file ldBasicConstraint.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a basic constraint node.
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

#include "ldRigCurveNode.h"

MTypeId RigCurveNode::id(0x01002);

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigCurveNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    /*
    if(plug == outTransform)
    {
        return MS::kSuccess;

    } else {
        return MS::kUnknownParameter;
    }
    */
    return MS::kSuccess;
}

/**
 * @brief Create the node instance.
 * 
 * @return void* 
 */
void* RigCurveNode::creator()
{
    return new RigCurveNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigCurveNode::initialize()
{
    MStatus stat;

    vector<MObject> inputs = {};
    vector<MObject> outputs = {};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}