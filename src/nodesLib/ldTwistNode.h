#ifndef TWIST_NODE
#define TWIST_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class TwistNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

    void pointPosition(MVector posA, MVector posB, double tPos, MVector &outPos, MVector &outAxisDir);
    MQuaternion pointRotation(MVector axisDir, MQuaternion rotA, MQuaternion rotB, double tPos, int alignAxis);
    void pointScale(double sclA[3], double sclB[3],double tPos, double (&pointScl)[3]);

public:
    static MTypeId id;

    static MObject inStartRange;
    static MObject inEndRange;
    static MObject inMatrixAPos;
    static MObject inMatrixARot;
    static MObject inMatrixAScl;
    static MObject inMatrixBPos;
    static MObject inMatrixBRot;
    static MObject inMatrixBScl;
    static MObject inTwistCount;
    static MObject inTwistProfil;
    static MObject inAlignAxis;

    static MObject outTransforms;
};

#endif