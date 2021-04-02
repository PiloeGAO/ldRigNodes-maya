#ifndef RIG_FOOTROLLNODE
#define RIG_FOOTROLLNODE

#include <maya/MPxNode.h>

#include <maya/MTypeId.h>

#include "ldBaseRigNode.h"

class RigFootRollNode : public BaseRigNode
{
public:
    MStatus compute(const MPlug& plug, MDataBlock& data) override;

    static void* creator();
    static MStatus initialize();

    double fit(double value, double oldMin, double oldMax, double newMin, double newMax);

public:
    static MTypeId id;

    static MObject inFootRoll;
    static MObject inMiddleLimit;
    static MObject inEndLimit;
    static MObject inHeelLimit;

    static MObject inSideRoll;
    static MObject inLeftLimit;
    static MObject inRightLimit;

    static MObject outHeelAngle;
    static MObject outMiddleAngle;
    static MObject outEndAngle;
    static MObject outLeftAngle;
    static MObject outRightAngle;
};

#endif