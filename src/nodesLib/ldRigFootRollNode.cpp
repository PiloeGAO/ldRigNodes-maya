/**
 * @file ldRigFootRollNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a fit node.
 * @version 0.1
 * @date 2021-04-02
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MFnMatrixAttribute.h>

#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MAngle.h>

#include "ldRigFootRollNode.h"

MTypeId RigFootRollNode::id(0x01008);

MObject RigFootRollNode::inFootRoll;
MObject RigFootRollNode::inMiddleLimit;
MObject RigFootRollNode::inEndLimit;
MObject RigFootRollNode::inHeelLimit;

MObject RigFootRollNode::inSideRoll;
MObject RigFootRollNode::inLeftLimit;
MObject RigFootRollNode::inRightLimit;

MObject RigFootRollNode::outHeelAngle;
MObject RigFootRollNode::outMiddleAngle;
MObject RigFootRollNode::outEndAngle;
MObject RigFootRollNode::outLeftAngle;
MObject RigFootRollNode::outRightAngle;

/**
 * @brief Fit a value to a new cursor of values.
 * 
 * @param value     double Value to fit.
 * @param oldMin    double Old minimum.
 * @param oldMax    double Old maximum.
 * @param newMin    double New minimum.
 * @param newMax    double New maximum.
 * @return          double Fitted value. 
 */
double RigFootRollNode::fit(double value, double oldMin, double oldMax, double newMin, double newMax)
{
    double result = ((value - oldMin) / (oldMax - oldMin)) * (newMax - newMin) + newMin;

    if(newMax > newMin)
    {
        if(result < newMin) { result = newMin; }
        else if(result > newMax) { result = newMax; }
    }
    else
    {
        if(result > newMin) { result = newMin; }
        else if(result < newMax) { result = newMax; }
    }

    return result;
}

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigFootRollNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;

    double footRoll = getAngle(data, inFootRoll).asDegrees();
    double middleLimit = getAngle(data, inMiddleLimit).asDegrees();
    double endLimit = getAngle(data, inEndLimit).asDegrees();
    double heelLimit = getAngle(data, inHeelLimit).asDegrees();

    double heelAngle = 0.0;
    double middleAngle = 0.0;
    double endAngle = 0.0;

    if(footRoll >= 0.0)
    {
        middleAngle = footRoll;
        if(footRoll > middleLimit)
        {
            endAngle = fit(footRoll, middleLimit, middleLimit+endLimit, 0.0, endLimit);
            middleAngle = fit(footRoll, middleLimit, middleLimit+endLimit, middleLimit, 0.0);
        }
    }
    else
    {
        heelAngle = footRoll;
        if(heelAngle < heelLimit) { heelAngle = heelLimit; }
    }

    double sideRoll = getAngle(data, inSideRoll).asDegrees();
    double leftLimit = getAngle(data, inLeftLimit).asDegrees();
    double rightLimit = getAngle(data, inRightLimit).asDegrees();

    double leftAngle = 0.0;
    double rightAngle = 0.0;

    if(sideRoll < 0.0)
    {
        leftAngle = fit(sideRoll, 0.0, leftLimit, 0.0, leftLimit);
    }
    else
    {
        rightAngle = fit(sideRoll, 0.0, rightLimit, 0.0, rightLimit);
    }

    if(plug == outHeelAngle
        || plug == outMiddleAngle
        || plug == outEndAngle
        || plug == outLeftAngle
        || plug == outRightAngle)
    {
        MDataHandle outHeelAngleHandle = data.outputValue(outHeelAngle);
        MDataHandle outMiddleAngleHandle = data.outputValue(outMiddleAngle);
        MDataHandle outEndAngleHandle = data.outputValue(outEndAngle);
        MDataHandle outLeftAngleHandle = data.outputValue(outLeftAngle);
        MDataHandle outRightAngleHandle = data.outputValue(outRightAngle);

        outHeelAngleHandle.setMAngle(MAngle(heelAngle, MAngle::kDegrees));
        outMiddleAngleHandle.setMAngle(MAngle(middleAngle, MAngle::kDegrees));
        outEndAngleHandle.setMAngle(MAngle(endAngle, MAngle::kDegrees));
        outLeftAngleHandle.setMAngle(MAngle(leftAngle, MAngle::kDegrees));
        outRightAngleHandle.setMAngle(MAngle(rightAngle, MAngle::kDegrees));

        outHeelAngleHandle.setClean();
        outMiddleAngleHandle.setClean();
        outEndAngleHandle.setClean();
        outLeftAngleHandle.setClean();
        outRightAngleHandle.setClean();
    } else {
        return MS::kUnknownParameter;
    }
    
    return MS::kSuccess;
}

/**
 * @brief Create the node instance.
 * 
 * @return void* 
 */
void* RigFootRollNode::creator()
{
    return new RigFootRollNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigFootRollNode::initialize()
{
    MStatus stat;

    inFootRoll = addInputAngleAttribute(stat, MString("footRoll"), MString("footRoll"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inMiddleLimit = addInputAngleAttribute(stat, MString("middleLimit"), MString("middleLimit"), 90.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inEndLimit = addInputAngleAttribute(stat, MString("endLimit"), MString("endLimit"), 100.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inHeelLimit = addInputAngleAttribute(stat, MString("heelLimit"), MString("heelLimit"), -60.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSideRoll = addInputAngleAttribute(stat, MString("sideRoll"), MString("sideRoll"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inLeftLimit = addInputAngleAttribute(stat, MString("leftLimit"), MString("leftLimit"), -70.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inRightLimit = addInputAngleAttribute(stat, MString("rightLimit"), MString("rightLimit"), 70.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    

    outHeelAngle = addOutputAngleAttribute(stat, MString("heel"), MString("heel"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outMiddleAngle = addOutputAngleAttribute(stat, MString("middle"), MString("middle"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outEndAngle = addOutputAngleAttribute(stat, MString("end"), MString("end"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outLeftAngle = addOutputAngleAttribute(stat, MString("left"), MString("left"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outRightAngle = addOutputAngleAttribute(stat, MString("right"), MString("right"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
        inFootRoll,
        inMiddleLimit,
        inEndLimit,
        inHeelLimit,
        inSideRoll,
        inLeftLimit,
        inRightLimit
    };
    vector<MObject> outputs = {
        outHeelAngle,
        outMiddleAngle,
        outEndAngle,
        outLeftAngle,
        outRightAngle
    };

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}