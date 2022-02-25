#ifndef EYELID_NODE
#define EYELID_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class ldRigEyelidNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inMasterRotation;
    static MObject inTopRotation;
    static MObject inBottomRotation;

    static MObject inTopIntensity;
    static MObject inBottomIntensity;
    static MObject inTopInner;
    static MObject inTopMiddle;
    static MObject inTopOuter;
    static MObject inBottomInner;
    static MObject inBottomMiddle;
    static MObject inBottomOuter;

    static MObject outTopInner;
    static MObject outTopMiddle;
    static MObject outTopOuter;
    static MObject outBottomInner;
    static MObject outBottomMiddle;
    static MObject outBottomOuter;
};

#endif