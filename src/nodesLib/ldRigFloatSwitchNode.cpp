/**
 * @file ldRigFloatSwitchNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a int switch node.
 * @version 0.1
 * @date 2021-12-15
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MArrayDataBuilder.h>

#include "ldRigFloatSwitchNode.h"

MTypeId RigFloatSwitchNode::id(0x01014);

MObject RigFloatSwitchNode::inCaseID;
MObject RigFloatSwitchNode::inOutCount;
MObject RigFloatSwitchNode::inTrueValue;
MObject RigFloatSwitchNode::inFalseValue;

MObject RigFloatSwitchNode::outValues;

/**
 * @brief Compute the value of the output from the case ID.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigFloatSwitchNode::compute(const MPlug& plug, MDataBlock& data)
{
    int caseID = getInt(data, inCaseID);
    double outputCount = getInt(data, inOutCount);
    double trueValue = getFloat(data, inTrueValue);
    double falseValue = getFloat(data, inFalseValue);

    if(outputCount < 0) { return MS::kUnknownParameter; }
    
    if(plug == outValues)
    {
        MArrayDataBuilder outArrayValue = MArrayDataBuilder(outValues, outputCount); //Obsolete but new constructor not work.
        
        for (int i = 0; i < outputCount; i++)
        {
            MDataHandle dataHandle = outArrayValue.addElement(i);

            double outputValue = falseValue;

            if(i == caseID)
            {
                outputValue = trueValue;
            }

            dataHandle.set((float) outputValue);
        }

        MArrayDataHandle outValueHandle = data.outputArrayValue(outValues);
            
        outValueHandle.set(outArrayValue);
        outValueHandle.setClean();

        data.setClean(plug);
    } else
    { return MS::kUnknownParameter; }
    
    return MS::kSuccess;
}

/**
 * @brief Create the node instance.
 * 
 * @return void* 
 */
void* RigFloatSwitchNode::creator()
{
    return new RigFloatSwitchNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigFloatSwitchNode::initialize()
{
    MStatus stat;

    inCaseID = addInputIntAttribute(stat, MString("caseID"), MString("caseID"), 0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inOutCount = addInputIntAttribute(stat, MString("outputCount"), MString("outCount"), 2);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTrueValue = addInputFloatAttribute(stat, MString("trueValue"), MString("trueValue"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFalseValue = addInputFloatAttribute(stat, MString("falseValue"), MString("falseValue"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outValues = addOutputArrayFloatAttribute(stat, MString("outputValues"), MString("outValues"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inCaseID, inOutCount, inTrueValue, inFalseValue};
    vector<MObject> outputs = {outValues};

    setAttributeDepencies(inputs, outputs);

    return MS::kSuccess;
}