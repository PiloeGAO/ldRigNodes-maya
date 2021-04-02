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
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigFootRollNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;

    if(plug == outHeelAngle
        || plug == outMiddleAngle
        || plug == outEndAngle
        || plug == outLeftAngle
        || plug == outRightAngle)
    {
        return MS::kSuccess;
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