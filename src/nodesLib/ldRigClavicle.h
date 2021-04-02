#ifndef RIG_CLAVICLE
#define RIG_CLAVICLE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigClavicle : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inPivotTrans;
    static MObject inTargetTrans;
    static MObject inAlignAxis;
    static MObject inRotationBlend;
    static MObject inRestLength;
    static MObject inStretchable;

    static MObject outPivotTrans;
    static MObject outEndTrans;
};

#endif