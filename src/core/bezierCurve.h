#ifndef BEZIER_CURVE
#define BEZIER_CURVE

#include <maya/MVector.h>
#include <maya/MVectorArray.h>

class BezierCurve
{
public:
    static MVector pointPosition(MVector p0, MVector p1, MVector p2, MVector p3, double t);
    static MVectorArray curve(MVector p0, MVector p1, MVector p2, MVector p3, int pointCount);
};

#endif