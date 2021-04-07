#ifndef SPACESWITCH_NODE
#define SPACESWITCH_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigSpaceSwitchNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inParentMatrix;
    static MObject inParentInverseMatrix;
    static MObject inSpaceMatrix;
    static MObject inSpaceOffset;
    static MObject inSpaceWeight;
    static MObject inSpaceType;
    static MObject inSpaces;
    
    static MObject outTransform;
};

#endif