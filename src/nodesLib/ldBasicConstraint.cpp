/**
 * @file ldBasicConstraint.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a basic constraint node.
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

#include "ldBasicConstraint.h"

MTypeId BasicConstraint::id(0x01001);

MObject BasicConstraint::inTransform;
MObject BasicConstraint::outTransform;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus BasicConstraint::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransform)
    {
        MDataHandle inTransformHandle = data.inputValue(inTransform, &returnStatus);
        if(returnStatus != MS::kSuccess){cerr << "ERROR getting data" << endl;}
        MTransformationMatrix transform = inTransformHandle.asMatrix();

        /* Spliting the components */
        MVector position = transform.getTranslation(MSpace::kWorld);
        MQuaternion rotation = transform.rotation();
        double scale[3];
        transform.getScale(scale, MSpace::kWorld);

        /* Building the result matrix from each components. */
        MTransformationMatrix resultTrans;
        resultTrans.setTranslation(position, MSpace::kWorld);
        resultTrans.setRotationQuaternion(rotation.x, rotation.y, rotation.z, rotation.w);
        resultTrans.setScale(scale, MSpace::kWorld);
        
        /* Set the result matrix as output. */
        MDataHandle outTansformHandle = data.outputValue(outTransform);
        outTansformHandle.setMMatrix(resultTrans.asMatrix());
        data.setClean(plug);
        

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
void* BasicConstraint::creator()
{
    return new BasicConstraint();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus BasicConstraint::initialize()
{
    MFnMatrixAttribute matAttribFn;
    MStatus stat;

    inTransform = addInputMatrixAttribute(stat, MString("inTranform"), MString("inTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outTransform = addOuputMatrixAttribute(stat, MString("outTranform"), MString("outTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    MObject inputs[1] = {inTransform};
    MObject outputs[1] = {outTransform};

    setAttributeDepencies(inputs, 1, outputs, 1);

    return MS::kSuccess;
}