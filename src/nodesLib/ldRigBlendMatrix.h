#ifndef BLEND_MATRIX
#define BLEND_MATRIX

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class ldRigBlendMatrix : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inTransformA;
    static MObject inTransformB;
    static MObject inBlendFactor;
    static MObject outTransform;
};

#endif