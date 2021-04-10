/**
 * @file ldRigSelectCasesNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a select cases node.
 * @version 0.1
 * @date 2021-01-28
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

#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>

#include "ldRigSelectCasesNode.h"

MTypeId RigSelectCasesNode::id(0x01012);

MObject RigSelectCasesNode::inCaseID;
MObject RigSelectCasesNode::inDefaultValue;
MObject RigSelectCasesNode::inValue;
MObject RigSelectCasesNode::inCaseValues;

MObject RigSelectCasesNode::outValue;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigSelectCasesNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outValue)
    {
        int caseID = getInt(data, inCaseID);
        double value = getFloat(data, inDefaultValue);

        MArrayDataHandle inCaseValuesHandle = data.inputArrayValue(inCaseValues);
        int valuesCount = inCaseValuesHandle.elementCount();

        if(caseID > -1 && caseID < valuesCount)
        {
            inCaseValuesHandle.jumpToElement(caseID);

            // Get the case datas.
            MDataHandle caseDatas = inCaseValuesHandle.inputValue();

            // Get the case value.
            double value = caseDatas.child(inValue).asFloat();
        }

        MDataHandle outValueHandle = data.outputValue(outValue);
        outValueHandle.setFloat(value);
        outValueHandle.setClean();
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
void* RigSelectCasesNode::creator()
{
    return new RigSelectCasesNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigSelectCasesNode::initialize()
{
    MStatus stat;

    inCaseID = addInputIntAttribute(stat, MString("caseID"), MString("caseID"), 0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inDefaultValue = addInputFloatAttribute(stat, MString("defaultValue"), MString("defaultValue"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inValue = addInputFloatAttribute(stat, MString("value"), MString("value"), -100000.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inCaseValues = addInputCompoundAttribute(stat, MString("cases"), MString("cases"), vector<MObject> {inValue});
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outValue = addOutputFloatAttribute(stat, MString("outValue"), MString("outValue"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inCaseID, inDefaultValue, inValue};
    vector<MObject> outputs = {outValue};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}