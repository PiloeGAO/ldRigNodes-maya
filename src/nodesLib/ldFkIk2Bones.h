#ifndef FKIK2BONES_NODE
#define FKIK2BONES_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class FkIk2Bones : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inBone1Length;
    static MObject inBone2Length;
    static MObject inBone1Scale;
    static MObject inBone2Scale;
    static MObject inIkRoot;
    static MObject inIkUpVector;
    static MObject inIkEffector;
    static MObject inFkBone1;
    static MObject inFkBone2;
    static MObject inFkBone3;
    static MObject inBlendIkFk;
    static MObject inActiveStretch;
    static MObject inAlignAxis;
    static MObject inUpVectorAxis;
    static MObject inNegativeScale;
    static MObject inInvertIK;

    static MObject outBone1Transform;
    static MObject outBone2Transform;
    static MObject outBone3Transform;
};

#endif