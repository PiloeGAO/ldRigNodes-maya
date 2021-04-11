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
#include <maya/MArrayDataHandle.h>
#include <maya/MArrayDataBuilder.h>
#include <maya/MDataHandle.h>
#include <maya/MMatrix.h>

#include "../core/curve.h"

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

    // Get the controller list handle.
    MStatus status;
    MArrayDataHandle inControllersHandle = data.inputArrayValue(inControllers, &status);
    if(!status) {status.perror("inControllersHandle:"); return status;}

    // Get the controllers count.
    int controllersCount = inControllersHandle.elementCount();

    // Define the array list of ik controllers.
    vector<MTransformationMatrix> ikControllersTrans = vector<MTransformationMatrix> (controllersCount);
    vector<double> controllersTangentScale = vector<double> (controllersCount);

    // Loop over the controller count.
    for (int i = 0; i < controllersCount; i++)
    {
        // Jump the array to the current controller.
        inControllersHandle.jumpToElement(i);
        
        // Get the controller.
        MDataHandle controller = inControllersHandle.inputValue();
        
        // Get the ik controller.
        ikControllersTrans[i] = MTransformationMatrix(controller.child(inIKController).asMatrix());
        controllersTangentScale[i] = (double) controller.child(inScaleTangent).asFloat();
    }
    
    if(controllersCount > 2)
    {
        // Set the curve parameters.
        curve.pointCount = getInt(data, inDeformCount);
        curve.stretchable = (bool) getInt(data, inStretchable);
        curve.limitStretch = (bool) getInt(data, inStretchLimit);
        curve.maxStretchFactor = getFloat(data, inStretchLengthFactor);
        curve.minStretchFactor = getFloat(data, inSquatchLengthFactor);
        curve.curveRestLength = getFloat(data, inCurveRestLength);
        curve.ctrlRestLength = getFloat(data, inControllerRestDistance);
        curve.alignAxis = getInt(data, inTwistAlignAxis);
        curve.startDistribution = getFloat(data, inDistributionStart);
        curve.endDistribution = getFloat(data, inDistributionEnd);
        curve.moveDistribution = getFloat(data, inDistributionMove);
        curve.stretchAxis0Scale = getFloat(data, inStretchAxis0Scale);
        curve.stretchAxis1Scale = getFloat(data, inStretchAxis1Scale);
        curve.squatchAxis0Scale = getFloat(data, inSquatchAxis0Scale);
        curve.squatchAxis1Scale = getFloat(data, inSquatchAxis1Scale);
        curve.distributionRamp = MRampAttribute(thisMObject(), inDistributionProfil);
        curve.twistRamp = MRampAttribute(thisMObject(), inTwistProfil);
        curve.stretchRamp = MRampAttribute(thisMObject(), inStretchProfil);
        curve.squatchRamp = MRampAttribute(thisMObject(), inSquatchProfil);
        curve.stretchNSquatchMode = (bool) getInt(data, inSNSMode);
        curve.addControllers(ikControllersTrans);
        curve.addControllersTanScl(controllersTangentScale);

        // Compute the curve.
        curve.preCurve();
        curve.normalize();
    }

    if(plug == outDeformers)
    {
        MArrayDataBuilder outArrayTranform = MArrayDataBuilder(outDeformers, curve.pointCount); //Obsolete but new constructor not work.

        for (int i = 0; i < curve.pointCount; i++)
        {
            MTransformationMatrix deformerTrans;
            deformerTrans.setTranslation(curve.getPointPosis(i), MSpace::kWorld);
            deformerTrans.setRotationQuaternion(curve.getPointRots(i).x, curve.getPointRots(i).y, curve.getPointRots(i).z, curve.getPointRots(i).w);
            double scale[3] = {curve.getPointScale(i).x, curve.getPointScale(i).y, curve.getPointScale(i).z};
            deformerTrans.setScale(scale, MSpace::kWorld);
            
            MDataHandle dataHandle = outArrayTranform.addElement(i);
            dataHandle.setMMatrix(deformerTrans.asMatrix());
        }

        MArrayDataHandle outTransformHandle = data.outputArrayValue(outDeformers);
        
        outTransformHandle.set(outArrayTranform);
        outTransformHandle.setClean();

        data.setClean(plug);
    } else
    { return MS::kUnknownParameter; }
    
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
    inDistributionMode = addInputEnumAttribute(stat, MString("distributionMode"), MString("distMode"), 0, distributionModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inDistributionStart = addInputFloatAttribute(stat, MString("distributionStart"), MString("distStart"), 0.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inDistributionEnd = addInputFloatAttribute(stat, MString("distributionEnd"), MString("distEnd"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inDistributionMove = addInputFloatAttribute(stat, MString("distributionMove"), MString("distMove"), 0.0, -10.0, 10.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inDistributionProfil = addInputRampAttribute(stat, MString("distributionProfil"), MString("distProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
        
    // Twist parameters.
    vector<MString> twistModes = {MString("First And Last")};
    inTwistMode = addInputEnumAttribute(stat, MString("twistMode"), MString("twistMode"), 0, twistModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> twistAlignAxisModes = {MString("+X"), MString("+Y"), MString("+Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inTwistAlignAxis = addInputEnumAttribute(stat, MString("twistAlignAxis"), MString("twistAlign"), 1, twistAlignAxisModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTwistProfil = addInputRampAttribute(stat, MString("twistProfil"), MString("twistProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Scale parameters.
    vector<MString> scaleModes = {MString("First And Last")};
    inScaleMode = addInputEnumAttribute(stat, MString("scaleMode"), MString("scaleMode"), 0, scaleModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inScaleProfil = addInputRampAttribute(stat, MString("scaleProfil"), MString("scaleProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Stretch N Squatch parameters.
    vector<MString> activeStretch = {MString("disable"), MString("enable")};
    inStretchable = addInputEnumAttribute(stat, MString("stretchable"), MString("stretch"), 1, activeStretch);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> limitStretch = {MString("disable"), MString("enable")};
    inStretchLimit = addInputEnumAttribute(stat, MString("limitStretch"), MString("lStretch"), 0, limitStretch);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inStretchLengthFactor = addInputFloatAttribute(stat, MString("stretchLengthFactor"), MString("maxSLF"), 1.2);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSquatchLengthFactor = addInputFloatAttribute(stat, MString("squatchLengthFactor"), MString("minSLF"), 0.8);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> snsModes = {MString("None"), MString("Controllers Distance")};
    inSNSMode = addInputEnumAttribute(stat, MString("stretchSquatchMode"), MString("snsMode"), 0, snsModes);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inStretchAxis0Scale = addInputFloatAttribute(stat, MString("stretchAxis0Scale"), MString("strchAxis0Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inStretchAxis1Scale = addInputFloatAttribute(stat, MString("stretchAxis1Scale"), MString("strchAxis1Scl"), 0.5);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inStretchProfil = addInputRampAttribute(stat, MString("stretchProfil"), MString("strchProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSquatchAxis0Scale = addInputFloatAttribute(stat, MString("squatchAxis0Scale"), MString("sqtchAxis0Scl"), 2.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSquatchAxis1Scale = addInputFloatAttribute(stat, MString("squatchAxis1Scale"), MString("sqtchAxis1Scl"), 2.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSquatchProfil = addInputRampAttribute(stat, MString("squatchProfil"), MString("sqtchProfil"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    // Controllers parameters.
    inIKController = addInputMatrixAttribute(stat, MString("ikController"), MString("ikCtrl"), false);
    inFKController = addInputMatrixAttribute(stat, MString("fkController"), MString("fkCtrl"), false);
    inPrevTangent = addInputMatrixAttribute(stat, MString("prevTangent"), MString("pTan"), false);
    inNextTangent = addInputMatrixAttribute(stat, MString("nextTangent"), MString("nTan"), false);

    inScaleTangent = addInputFloatAttribute(stat, MString("scaleTangent"), MString("sclTan"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MObject> controllerAttributes = {inIKController, inFKController, inPrevTangent, inNextTangent, inScaleTangent};
    inControllers = addInputCompoundAttribute(stat, MString("controllers"), MString("ctrls"), controllerAttributes, true);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    //Output parameters.
    outDeformers = addOutputArrayMatrixAttribute(stat, MString("deformers"), MString("defs"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outCurveLength = addOutputFloatAttribute(stat, MString("curveLength"), MString("crvLength"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outFLDistance = addOutputFloatAttribute(stat, MString("controllerFLDistance"), MString("ctrlFLDist"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outAutoTangents = addOutputArrayMatrixAttribute(stat, MString("autoTangents"), MString("autoTans"));
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