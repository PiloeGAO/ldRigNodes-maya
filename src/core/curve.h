#ifndef CORE_CURVE
#define CORE_CURVE

#include <vector>

#include <maya/MVector.h>
#include <maya/MVectorArray.h>
#include <maya/MQuaternion.h>
#include <maya/MRampAttribute.h>

using namespace std;

class Curve
{
public:
    void firstSubCurveTangent(MVector c0, MVector c1, MVector c2, double c0ScaleTan, double c1ScaleTan);
    void lastSubCurveTangent(MVector c0, MVector c1, MVector c2, double c1ScaleTan, double c2ScaleTan);
    void middleSubCurveTangent(MVector c0, MVector c1, MVector c2, MVector c3, double c1ScaleTan, double c2ScaleTan);
    void preCurve();
    void normalize();
    void pointRotation(MQuaternion quatC1, MQuaternion quatC2, MVector pointTarget, double t, int pointID, int alignAxis=1);
    void pointScale(double scaleC1[3], double scaleC2[3], double t, int pointID);
    double fit(double value, double oldMin, double oldMax, double newMin, double newMax);
    void pointStretchNSquatch(double t, int pointID, MVector firstControllerPos, MVector lastControllerPos, int alignAxis=1);
    
    void addControllers(vector<MTransformationMatrix> controllers);
    void addControllersTanScl(vector<double> controllersTanScl);

    MVector getPointPosis(int pointID);
    MQuaternion getPointRots(int pointID);
    MVector getPointScale(int pointID);
private:
    double length();
    
public:
    int pointCount = 10;
    bool stretchable = true;
    bool limitStretch = true;
    double maxStretchFactor = 1.2;
    double minStretchFactor = 0.8;
    double curveRestLength = 1.0;
    double ctrlRestLength = 1.0;
    int alignAxis = 0;
    double startDistribution = 0.0;
    double endDistribution = 1.0;
    double moveDistribution = 0.0;
    double stretchAxis0Scale = 0.5;
    double stretchAxis1Scale = 0.5;
    double squatchAxis0Scale = 2.0;
    double squatchAxis1Scale = 2.0;
    MRampAttribute distributionRamp;
    MRampAttribute twistRamp;
    MRampAttribute stretchRamp;
    MRampAttribute squatchRamp;
    bool stretchNSquatchMode = false;
    bool twistMode = false;
    bool scaleMode = false;

private:
    int arraySize = 100;
    vector<MTransformationMatrix> controllers;
    vector<double> controllersTanScl;

    int preCrvPntCount = 0;
    MVectorArray preCrvPntPosis = MVectorArray(arraySize, MVector::zero);
    MVectorArray preCrvPntTans = MVectorArray(arraySize, MVector::zero);
    vector<double> preCrvPntDists = vector<double> (arraySize);

    int subCurveResolution = 10;
    MVectorArray subCurveControllers = MVectorArray(4, MVector::zero);

    MVectorArray crvPntPosis = MVectorArray(arraySize, MVector::zero);
    MVectorArray crvPntTans = MVectorArray(arraySize, MVector::zero);
    vector<MQuaternion> crvPntRots = vector<MQuaternion> (arraySize);
    MVectorArray crvPntScls = MVectorArray(arraySize, MVector::one);
};

#endif