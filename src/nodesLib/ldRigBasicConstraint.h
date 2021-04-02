#ifndef BASIC_CONSTRAINT
#define BASIC_CONSTRAINT

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class BasicConstraint : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inTransform;
    static MObject outTransform;
};

#endif