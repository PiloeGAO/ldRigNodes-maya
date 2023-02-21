#ifndef LOGICALAND_NODE
#define LOGICALAND_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigLogicalAndNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inValue;
    static MObject inValues;
    static MObject inComparaisonType;
    static MObject inSecondTerm;
    static MObject inTrueValue;
    static MObject inFalseValue;

    static MObject outValue;
};

#endif