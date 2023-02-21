/**
 * @file bezierCurve.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Class to create a bezier curve with four controller point.
 * @version 0.1
 * @date 2021-03-18
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <maya/MVectorArray.h>
#include <maya/MVector.h>

#include "bezierCurve.h"

/**
 * @brief 
 * 
 * @param p0 
 * @param p1 
 * @param p2 
 * @param p3 
 * @param t 
 * @return MVector 
 */
MVector BezierCurve::pointPosition(MVector p0, MVector p1, MVector p2, MVector p3, double t)
{
    double t2 = t * t;
    double t3 = t2 * t;

    double invT = 1.0 - t;
    double invT2 = invT * invT;
    double invT3 = invT2 * invT;

    MVector pos = invT3 * p0 + 3 * invT2 * t * p1 + 3 * invT * t2 * p2 + t3 * p3;
    return pos;
}

/**
 * @brief Compute the bezier curve.
 * 
 * @param p0            MVector Position 0.
 * @param p1            MVector Position 1.
 * @param p2            MVector Position 2.
 * @param p3            MVector Position 3.
 * @param pointCount    int     Point count.
 * @return MVectorArray 
 */
MVectorArray BezierCurve::curve(MVector p0, MVector p1, MVector p2, MVector p3, int pointCount)
{
    MVectorArray curvePointPositions = MVectorArray(pointCount, MVector::zero);

    for (int i = 0; i < pointCount; i++)
    {
        double t = double(i) / double(pointCount - 1);

        curvePointPositions[i] = pointPosition(p0, p1, p2, p3, t);
    }
    
    return curvePointPositions;
}