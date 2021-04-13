#ifndef IKPLANE_NODE
#define IKPLANE_NODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigIkPlane : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

public:
    static MTypeId id;

    static MObject inRootTransform;
    static MObject inEffTransform;
    static MObject inUpVectorTransform;
    
    static MObject outTransform;
};

#endif