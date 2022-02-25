/**
 * @file ldRigEyelidNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a eyelid node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2022
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

#include "ldRigEyelidNode.h"

MTypeId ldRigEyelidNode::id(0x01016);

MObject ldRigEyelidNode::inMasterRotation;
MObject ldRigEyelidNode::inTopRotation;
MObject ldRigEyelidNode::inBottomRotation;

MObject ldRigEyelidNode::inTopIntensity;
MObject ldRigEyelidNode::inBottomIntensity;
MObject ldRigEyelidNode::inTopInner;
MObject ldRigEyelidNode::inTopMiddle;
MObject ldRigEyelidNode::inTopOuter;
MObject ldRigEyelidNode::inBottomInner;
MObject ldRigEyelidNode::inBottomMiddle;
MObject ldRigEyelidNode::inBottomOuter;

MObject ldRigEyelidNode::outTopInner;
MObject ldRigEyelidNode::outTopMiddle;
MObject ldRigEyelidNode::outTopOuter;
MObject ldRigEyelidNode::outBottomInner;
MObject ldRigEyelidNode::outBottomMiddle;
MObject ldRigEyelidNode::outBottomOuter;

/**
 * @brief Compute the blend between matrix A and matrix B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus ldRigEyelidNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTopInner ||
        plug == outTopMiddle ||
        plug == outTopOuter ||
        plug == outBottomInner ||
        plug == outBottomMiddle ||
        plug == outBottomOuter)
    {
        double masterRotation = getFloat(data, inMasterRotation);
        double topRotation = getFloat(data, inTopRotation);
        double bottomRotation = getFloat(data, inBottomRotation);

        double topIntensity = getFloat(data, inTopIntensity);
        double bottomIntensity = getFloat(data, inBottomIntensity);
        double topInnerIntensity = getFloat(data, inTopInner);
        double topMiddleIntensity = getFloat(data, inTopMiddle);
        double topOuterIntensity = getFloat(data, inTopOuter);
        double bottomInnerIntensity = getFloat(data, inBottomInner);
        double bottomMiddleIntensity = getFloat(data, inBottomMiddle);
        double bottomOuterIntensity = getFloat(data, inBottomOuter);
        
        /* Set the result floats as output. */
        MDataHandle topInnerHandle = data.outputValue(outTopInner);
        topInnerHandle.setFloat(0.5);
        MDataHandle topMiddleHandle = data.outputValue(outTopMiddle);
        topMiddleHandle.setFloat(0.5);
        MDataHandle topOuterHandle = data.outputValue(outTopOuter);
        topOuterHandle.setFloat(0.5);
        MDataHandle bottomInnerHandle = data.outputValue(outBottomInner);
        bottomInnerHandle.setFloat(0.5);
        MDataHandle bottomMiddleHandle = data.outputValue(outBottomMiddle);
        bottomMiddleHandle.setFloat(0.5);
        MDataHandle bottomOuterHandle = data.outputValue(outBottomOuter);
        bottomOuterHandle.setFloat(0.5);
        data.setClean(plug);
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
void* ldRigEyelidNode::creator()
{
    return new ldRigEyelidNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus ldRigEyelidNode::initialize()
{
    MStatus stat;

    inMasterRotation = addInputFloatAttribute(stat, MString("masterRotation"), MString("masterRot"), 0.0, -360, 360);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTopRotation = addInputFloatAttribute(stat, MString("topRotation"), MString("topRot"), 0.0, -360, 360);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inBottomRotation = addInputFloatAttribute(stat, MString("bottomRotation"), MString("bottomRot"), 0.0, -360, 360);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTopIntensity = addInputFloatAttribute(stat, MString("topIntensity"), MString("topInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inBottomIntensity = addInputFloatAttribute(stat, MString("bottomIntensity"), MString("bottomInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTopInner = addInputFloatAttribute(stat, MString("topInnerIntensity"), MString("topInnerInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTopMiddle = addInputFloatAttribute(stat, MString("topMiddleIntensity"), MString("topMiddleInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTopOuter = addInputFloatAttribute(stat, MString("topOuterIntensity"), MString("topOuterInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inBottomInner = addInputFloatAttribute(stat, MString("bottomInnerIntensity"), MString("bottomInnerInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inBottomMiddle = addInputFloatAttribute(stat, MString("bottomMiddleIntensity"), MString("bottomMiddleInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inBottomOuter = addInputFloatAttribute(stat, MString("bottomOuterIntensity"), MString("bottomOuterInt"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outTopInner = addOutputFloatAttribute(stat, MString("topInnerRotation"), MString("topInnerRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outTopMiddle = addOutputFloatAttribute(stat, MString("topMiddleRotation"), MString("topMiddleRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outTopOuter = addOutputFloatAttribute(stat, MString("topOuterRotation"), MString("topOuterRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outBottomInner = addOutputFloatAttribute(stat, MString("bottomInnerRotation"), MString("bottomInnerRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outBottomMiddle = addOutputFloatAttribute(stat, MString("bottomMiddleRotation"), MString("bottomMiddleRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outBottomOuter = addOutputFloatAttribute(stat, MString("bottomOuterRotation"), MString("bottomOuterRot"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
        inMasterRotation,
        inTopRotation,
        inBottomRotation,
        inTopIntensity,
        inBottomIntensity,
        inTopInner,
        inTopMiddle,
        inTopOuter,
        inBottomInner,
        inBottomMiddle,
        inBottomOuter
    };
    vector<MObject> outputs = {
        outTopInner,
        outTopMiddle,
        outTopOuter,
        outBottomInner,
        outBottomMiddle,
        outBottomOuter
    };

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}