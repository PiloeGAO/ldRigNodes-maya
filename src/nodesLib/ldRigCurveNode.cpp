/**
 * @file ldBasicConstraint.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Register a rig curve node.
 * @version 0.1
 * @date 2021-03-17
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

// Base parameters
MObject RigCurveNode::inDeformCount;
MObject RigCurveNode::inCurveRestLength;
MObject RigCurveNode::inControllerRestDistance;
MObject RigCurveNode::inFKIKBlend;

// Distribution parameters.
MObject RigCurveNode::inDistributionMode;
MObject RigCurveNode::inDistributionStart;
MObject RigCurveNode::inDistributionEnd;
MObject RigCurveNode::inDistributionMove;
MObject RigCurveNode::inDistributionProfil;

// Twist parameters.
MObject RigCurveNode::inTwistMode;
MObject RigCurveNode::inTwistAlignAxis;
MObject RigCurveNode::inTwistProfil;

// Scale parameters.
MObject RigCurveNode::inScaleMode;
MObject RigCurveNode::inScaleProfil;

// Stretch N Squatch parameters.
MObject RigCurveNode::inStretchable;
MObject RigCurveNode::inStretchLimit;
MObject RigCurveNode::inStretchLengthFactor;
MObject RigCurveNode::inSquatchLengthFactor;
MObject RigCurveNode::inSNSMode;
MObject RigCurveNode::inStretchAxis0Scale;
MObject RigCurveNode::inStretchAxis1Scale;
MObject RigCurveNode::inStretchProfil;
MObject RigCurveNode::inSquatchAxis0Scale;
MObject RigCurveNode::inSquatchAxis1Scale;
MObject RigCurveNode::inSquatchProfil;

// Controllers parameters.
MObject RigCurveNode::inControllers;
MObject RigCurveNode::inIKController;
MObject RigCurveNode::inFKController;
MObject RigCurveNode::inPrevTangent;
MObject RigCurveNode::inNextTangent;
MObject RigCurveNode::inScaleTangent;

//Output parameters.
MObject RigCurveNode::outDeformers;
MObject RigCurveNode::outCurveLength;
MObject RigCurveNode::outFLDistance;
MObject RigCurveNode::outAutoTangents;

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

    // Base parameters.
    inDeformCount = addInputIntAttribute(stat, MString("deformerCount"), MString("defCount"), 10);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inCurveRestLength = addInputFloatAttribute(stat, MString("curveRestLength"), MString("crvRestL"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inControllerRestDistance = addInputFloatAttribute(stat, MString("controllerRestDistance"), MString("ctrlRestD"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFKIKBlend = addInputFloatAttribute(stat, MString("fkIkBlend"), MString("fkIkBlend"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Distribution parameters.
    vector<MString> distributionModes = {MString("Normalized")};
    MObject inDistributionMode = addInputEnumAttribute(stat, MString("distributionMode"), MString("distMode"), 0, distributionModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inDistributionStart = addInputFloatAttribute(stat, MString("distributionStart"), MString("distStart"), 0.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inDistributionEnd = addInputFloatAttribute(stat, MString("distributionEnd"), MString("distEnd"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inDistributionMove = addInputFloatAttribute(stat, MString("distributionMove"), MString("distMove"), 0.0, -10.0, 10.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inDistributionProfil = addInputRampAttribute(stat, MString("distributionProfil"), MString("distProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
        
    // Twist parameters.
    vector<MString> twistModes = {MString("First And Last")};
    MObject inTwistMode = addInputEnumAttribute(stat, MString("twistMode"), MString("twistMode"), 0, twistModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> twistAlignAxisModes = {MString("+X"), MString("+Y"), MString("+Z"), MString("-X"), MString("-Y"), MString("-Z")};
    MObject inTwistAlignAxis = addInputEnumAttribute(stat, MString("twistAlignAxis"), MString("twistAlign"), 1, twistAlignAxisModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inTwistProfil = addInputRampAttribute(stat, MString("twistProfil"), MString("twistProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Scale parameters.
    vector<MString> scaleModes = {MString("First And Last")};
    MObject inScaleMode = addInputEnumAttribute(stat, MString("scaleMode"), MString("scaleMode"), 0, scaleModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inScaleProfil = addInputRampAttribute(stat, MString("scaleProfil"), MString("scaleProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Stretch N Squatch parameters.
    vector<MString> activeStretch = {MString("disable"), MString("enable")};
    MObject inStretchable = addInputEnumAttribute(stat, MString("stretchable"), MString("stretch"), 1, activeStretch);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> limitStretch = {MString("disable"), MString("enable")};
    MObject inStretchLimit = addInputEnumAttribute(stat, MString("limitStretch"), MString("lStretch"), 0, limitStretch);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inStretchLengthFactor = addInputFloatAttribute(stat, MString("stretchLengthFactor"), MString("maxSLF"), 1.2);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inSquatchLengthFactor = addInputFloatAttribute(stat, MString("squatchLengthFactor"), MString("minSLF"), 0.8);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> snsModes = {MString("None"), MString("Controllers Distance")};
    MObject inSNSMode = addInputEnumAttribute(stat, MString("stretchSquatchMode"), MString("snsMode"), 0, snsModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inStretchAxis0Scale = addInputFloatAttribute(stat, MString("stretchAxis0Scale"), MString("strchAxis0Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inStretchAxis1Scale = addInputFloatAttribute(stat, MString("stretchAxis1Scale"), MString("strchAxis1Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inStretchProfil = addInputRampAttribute(stat, MString("stretchProfil"), MString("strchProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inSquatchAxis0Scale = addInputFloatAttribute(stat, MString("squatchAxis0Scale"), MString("sqtchAxis0Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inSquatchAxis1Scale = addInputFloatAttribute(stat, MString("squatchAxis1Scale"), MString("sqtchAxis1Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inSquatchProfil = addInputRampAttribute(stat, MString("squatchProfil"), MString("sqtchProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Controllers parameters.
    MObject inIKController = addInputMatrixAttribute(stat, MString("ikController"), MString("ikCtrl"), false);
    MObject inFKController = addInputMatrixAttribute(stat, MString("fkController"), MString("fkCtrl"), false);
    MObject inPrevTangent = addInputMatrixAttribute(stat, MString("prevTangent"), MString("pTan"), false);
    MObject inNextTangent = addInputMatrixAttribute(stat, MString("nextTangent"), MString("nTan"), false);

    MObject inScaleTangent = addInputFloatAttribute(stat, MString("scaleTangent"), MString("sclTan"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MObject> controllerAttributes = {inIKController, inFKController, inPrevTangent, inNextTangent, inScaleTangent};
    MObject inControllers = addInputCompoundAttribute(stat, MString("controllers"), MString("ctrls"), controllerAttributes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    //Output parameters.
    MObject outDeformers = addOutputArrayMatrixAttribute(stat, MString("deformers"), MString("defs"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject outCurveLength = addOutputFloatAttribute(stat, MString("curveLength"), MString("crvLength"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject outFLDistance = addOutputFloatAttribute(stat, MString("controllerFLDistance"), MString("ctrlFLDist"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject outAutoTangents = addOutputArrayMatrixAttribute(stat, MString("autoTangents"), MString("autoTans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}


    vector<MObject> inputs = {
                                inDeformCount,
                                inCurveRestLength,
                                inControllerRestDistance,
                                inFKIKBlend,
                                inDistributionMode,
                                inDistributionEnd,
                                inDistributionMove,
                                inDistributionProfil,
                                inTwistMode,
                                inTwistAlignAxis,
                                inTwistProfil,
                                inScaleMode,
                                inScaleProfil,
                                inStretchable,
                                inStretchLimit,
                                inStretchLengthFactor,
                                inSquatchLengthFactor,
                                inSNSMode,
                                inStretchAxis0Scale,
                                inStretchAxis1Scale,
                                inStretchProfil,
                                inSquatchAxis0Scale,
                                inSquatchAxis1Scale,
                                inSquatchProfil,
                                inControllers
                            };
    vector<MObject> outputs = {
                                outDeformers,
                                outCurveLength,
                                outFLDistance,
                                outAutoTangents
                            };

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}