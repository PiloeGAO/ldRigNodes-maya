#ifndef FLOATSWITCH_NODE
#define FLOATSWITCH_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigFloatSwitchNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inCaseID;
    static MObject inOutCount;
    static MObject inTrueValue;
    static MObject inFalseValue;

    static MObject outValues;
};

#endif