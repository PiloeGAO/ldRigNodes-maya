/**
 * @file ldRigldRigBlendMatrix.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a blend matrix node.
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

#include "ldRigBlendMatrix.h"

MTypeId ldRigBlendMatrix::id(0x01015);

MObject ldRigBlendMatrix::inTransformA;
MObject ldRigBlendMatrix::inTransformB;
MObject ldRigBlendMatrix::inBlendFactor;
MObject ldRigBlendMatrix::outTransform;

/**
 * @brief Compute the blend between matrix A and matrix B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus ldRigBlendMatrix::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransform)
    {
        MTransformationMatrix transformA = getMatrix(data, inTransformA);
        MTransformationMatrix transformB = getMatrix(data, inTransformB);
        double blendValue = getFloat(data, inBlendFactor);

        /* Spliting the components A */
        MVector positionA;
        MQuaternion rotationA;
        double scaleA[3];
        splitMTransformationMatrix(transformA, positionA, rotationA, scaleA);

        /* Spliting the components B */
        MVector positionB;
        MQuaternion rotationB;
        double scaleB[3];
        splitMTransformationMatrix(transformB, positionB, rotationB, scaleB);

        /* Building the result matrix from each components. */
        MVector outPosition = positionA + (positionB - positionA) * blendValue;
        MQuaternion outRotation = slerp(rotationA, rotationB, blendValue);
        double outScale[3] = {
        outScale[0] = scaleA[0] + (scaleB[0] - scaleA[0]) * blendValue,
        outScale[1] = scaleA[1] + (scaleB[1] - scaleA[1]) * blendValue,
        outScale[2] = scaleA[2] + (scaleB[2] - scaleA[2]) * blendValue
        };
        
        MTransformationMatrix resultTrans;
        resultTrans.setTranslation(outPosition, MSpace::kWorld);
        resultTrans.setRotationQuaternion(outRotation.x, outRotation.y, outRotation.z, outRotation.w);
        resultTrans.setScale(outScale, MSpace::kWorld);
        
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
void* ldRigBlendMatrix::creator()
{
    return new ldRigBlendMatrix();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus ldRigBlendMatrix::initialize()
{
    MStatus stat;

    inTransformA = addInputMatrixAttribute(stat, MString("tranformA"), MString("transfA"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inTransformB = addInputMatrixAttribute(stat, MString("tranformB"), MString("transfB"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inBlendFactor = addInputFloatAttribute(stat, MString("blendFactor"), MString("blendFact"), 0.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outTransform = addOutputMatrixAttribute(stat, MString("outTranform"), MString("outTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
        inTransformA,
        inTransformB,
        inBlendFactor
    };
    vector<MObject> outputs = {outTransform};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}