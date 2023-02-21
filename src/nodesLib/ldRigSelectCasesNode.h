#ifndef SELECTCASES_NODE
#define SELECTCASES_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigSelectCasesNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inCaseID;
    static MObject inDefaultValue;
    static MObject inValue;
    static MObject inCaseValues;

    static MObject outValue;
};

#endif