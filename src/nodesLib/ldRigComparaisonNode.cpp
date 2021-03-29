/**
 * @file ldRigComparaisonNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Register a comparaison node.
 * @version 0.1
 * @date 2021-03-29
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

#include "ldRigComparaisonNode.h"

MTypeId RigComparaisonNode::id(0x01005);


MObject RigComparaisonNode::inFirstTerm;
MObject RigComparaisonNode::inSecondTerm;
MObject RigComparaisonNode::inComparaisonType;
MObject RigComparaisonNode::inFalseValue;
MObject RigComparaisonNode::inTrueValue;

MObject RigComparaisonNode::outValue;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigComparaisonNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outValue)
    {
        double firstTerm = getFloat(data, inFirstTerm);
        double secondTerm = getFloat(data, inSecondTerm);
        int comparaisonType = getInt(data, inComparaisonType);
        double trueValue = getFloat(data, inTrueValue);
        double falseValue = getFloat(data, inFalseValue);

        double value = falseValue;

        if(comparaisonType == 0 && firstTerm == secondTerm) { value = trueValue; }
        else if (comparaisonType == 1 && firstTerm != secondTerm) { value = trueValue; }
        else if (comparaisonType == 2 && firstTerm > secondTerm) { value = trueValue; }
        else if (comparaisonType == 3 && firstTerm >= secondTerm) { value = trueValue; }
        else if (comparaisonType == 4 && firstTerm < secondTerm) { value = trueValue; }
        else if (comparaisonType == 5 && firstTerm <= secondTerm) { value = trueValue; }

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
void* RigComparaisonNode::creator()
{
    return new RigComparaisonNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigComparaisonNode::initialize()
{
    MStatus stat;

    vector<MString> comparaisonEnum = {MString("=="), MString("!="), MString(">"), MString(">="), MString("<"), MString("<=")}; 
    inComparaisonType = addInputEnumAttribute(stat, MString("comparaisonType"), MString("camparaisonType"), 0, comparaisonEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFirstTerm = addInputFloatAttribute(stat, MString("firstTerm"), MString("firstTerm"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inSecondTerm = addInputFloatAttribute(stat, MString("secondTerm"), MString("secondTerm"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inTrueValue = addInputFloatAttribute(stat, MString("trueValue"), MString("trueValue"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFalseValue = addInputFloatAttribute(stat, MString("falseValue"), MString("falseValue"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outValue = addOutputFloatAttribute(stat, MString("outValue"), MString("outValue"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inComparaisonType, inFirstTerm, inSecondTerm, inTrueValue, inFalseValue};
    vector<MObject> outputs = {outValue};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}