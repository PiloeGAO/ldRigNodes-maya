#ifndef COMPARAISON_NODE
#define COMPARAISON_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigComparaisonNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inFirstTerm;
    static MObject inSecondTerm;
    static MObject inComparaisonType;
    static MObject inFalseValue;
    static MObject inTrueValue;

    static MObject outValue;
};

#endif