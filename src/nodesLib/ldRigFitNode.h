#ifndef RIG_FITNODE
#define RIG_FITNODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigFitNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inValue;
    static MObject inOldMinValue;
    static MObject inOldMaxValue;
    static MObject inNewMinValue;
    static MObject inNewMaxValue;
    static MObject inClamp;

    static MObject outValue;
};

#endif