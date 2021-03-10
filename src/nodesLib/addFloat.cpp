/**
 * @file addFloat.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register an add two float node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MFnNumericAttribute.h>

#include <maya/MString.h>
#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include "addFloat.h"

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

    inFloatA = numAttribFn.create("FloatA", "fltA", MFnNumericData::kFloat, 0.0);
    numAttribFn.setStorable(true);
    numAttribFn.setKeyable(true);
    numAttribFn.setHidden(false);
    numAttribFn.setWritable(true);

    stat = addAttribute(inFloatA);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inFloatB = numAttribFn.create("FloatB", "fltB", MFnNumericData::kFloat, 0.0);
    numAttribFn.setStorable(true);
    numAttribFn.setKeyable(true);
    numAttribFn.setHidden(false);
    numAttribFn.setWritable(true);

    stat = addAttribute(inFloatB);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outResult = numAttribFn.create("result", "rslt", MFnNumericData::kFloat, 0.0);
    numAttribFn.setWritable(false);
    numAttribFn.setStorable(false);
    numAttribFn.setHidden(false);
    numAttribFn.setReadable(true);

    stat = addAttribute(outResult);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    stat = attributeAffects( inFloatA, outResult);
    if(!stat) {stat.perror("attributeAffects"); return stat;}
    stat = attributeAffects( inFloatB, outResult);
    if(!stat) {stat.perror("attributeAffects"); return stat;}

    return MS::kSuccess;
}