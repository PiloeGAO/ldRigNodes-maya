#ifndef CURVE_NODE
#define CURVE_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

#include "../core/curve.h"

class RigCurveNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    // Base parameters
    static MObject inDeformCount;
    static MObject inCurveRestLength;
    static MObject inControllerRestDistance;
    static MObject inFKIKBlend;

    // Distribution parameters.
    static MObject inDistributionMode;
    static MObject inDistributionStart;
    static MObject inDistributionEnd;
    static MObject inDistributionMove;
    static MObject inDistributionProfil;

    // Twist parameters.
    static MObject inTwistMode;
    static MObject inTwistAlignAxis;
    static MObject inTwistProfil;

    // Scale parameters.
    static MObject inScaleMode;
    static MObject inScaleProfil;

    // Stretch N Squatch parameters.
    static MObject inStretchable;
    static MObject inStretchLimit;
    static MObject inStretchLengthFactor;
    static MObject inSquatchLengthFactor;
    static MObject inSNSMode;
    static MObject inStretchAxis0Scale;
    static MObject inStretchAxis1Scale;
    static MObject inStretchProfil;
    static MObject inSquatchAxis0Scale;
    static MObject inSquatchAxis1Scale;
    static MObject inSquatchProfil;

    // Controllers parameters.
    static MObject inControllers;
    static MObject inIKController;
    static MObject inFKController;
    static MObject inPrevTangent;
    static MObject inNextTangent;
    static MObject inScaleTangent;

    //Output parameters.
    static MObject outDeformers;
    static MObject outCurveLength;
    static MObject outFLDistance;
    static MObject outAutoTangents;

private:
    Curve curve = Curve();
};

#endif