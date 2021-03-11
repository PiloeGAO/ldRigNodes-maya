#ifndef ADD_FLOAT
#define ADD_FLOAT

#include <maya/MPxNode.h>
#include "ldBaseRigNode.h"

#include <maya/MTypeId.h>

class AddFloat : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inFloatA;
    static MObject inFloatB;
    static MObject outResult;
};

#endif