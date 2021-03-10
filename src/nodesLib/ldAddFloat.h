#ifndef ADD_FLOAT
#define ADD_FLOAT

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

class AddFloat : public MPxNode
{
public:
/*
    AddFloat();
    ~AddFloat() override;
*/
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