/**
 * @file ldAddFloat.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register an add two float node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <maya/MFnNumericAttribute.h>

#include <maya/MString.h>
#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MObject.h>

#include "ldAddFloat.h"

MTypeId AddFloat::id(0x01000);

MObject AddFloat::inFloatA;
MObject AddFloat::inFloatB;
MObject AddFloat::outResult;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus AddFloat::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;

    if(plug == outResult)
    {
        MDataHandle inFloatAHandle = data.inputValue(inFloatA, &returnStatus);
        MDataHandle inFloatBHandle = data.inputValue(inFloatB, &returnStatus);

        if(returnStatus != MS::kSuccess)
        {
            cerr << "ERROR getting data" << endl;
        }
        else
        {        
            float result = inFloatAHandle.asFloat() + inFloatBHandle.asFloat();

            MDataHandle outResultHandle = data.outputValue(outResult);
            outResultHandle.set(result);
            data.setClean(plug);
        }

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
void* AddFloat::creator()
{
    return new AddFloat();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus AddFloat::initialize()
{
    MFnNumericAttribute numAttribFn;
    MStatus stat;

    inFloatA = addInputFloatAttribute(stat, MString("FloatA"), MString("fltA"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inFloatB = addInputFloatAttribute(stat, MString("FloatB"), MString("fltB"), 0.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outResult = addOuputFloatAttribute(stat, MString("result"), MString("rslt"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    MObject inputs[2] = {inFloatA, inFloatB};
    MObject outputs[1] = {outResult};

    setAttributeDepencies(inputs, 2, outputs, 1);

    return MS::kSuccess;
}