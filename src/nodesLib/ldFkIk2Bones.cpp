/**
 * @file ldFkIk2Bones.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a fk/ik 2 bones node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include <maya/MPxNode.h>

#include <maya/MTypeId.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>

#include "ldFkIk2Bones.h"

MTypeId FkIk2Bones::id(0x01004);


MObject FkIk2Bones::inBone1Length;
MObject FkIk2Bones::inBone2Length;
MObject FkIk2Bones::inBone1Scale;
MObject FkIk2Bones::inBone2Scale;
MObject FkIk2Bones::inIkRoot;
MObject FkIk2Bones::inIkUpVector;
MObject FkIk2Bones::inIkEffector;
MObject FkIk2Bones::inFkBone1;
MObject FkIk2Bones::inFkBone2;
MObject FkIk2Bones::inFkBone3;
MObject FkIk2Bones::inBlendIkFk;
MObject FkIk2Bones::inActiveStretch;
MObject FkIk2Bones::inAlignAxis;
MObject FkIk2Bones::inUpVectorAxis;
MObject FkIk2Bones::inNegativeScale;
MObject FkIk2Bones::inInvertIK;

MObject FkIk2Bones::outBone1Transform;
MObject FkIk2Bones::outBone2Transform;
MObject FkIk2Bones::outBone3Transform;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus FkIk2Bones::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outBone1Transform || plug == outBone2Transform || plug == outBone3Transform)
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
void* FkIk2Bones::creator()
{
    return new FkIk2Bones();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus FkIk2Bones::initialize()
{
    MStatus stat;

    inBone1Length = addInputFloatAttribute(stat, MString("bone1Length"), MString("b1L"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inBone2Length = addInputFloatAttribute(stat, MString("bone2Length"), MString("b2L"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inBone1Scale = addInputFloatAttribute(stat, MString("bone1Scale"), MString("b1S"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inBone2Scale = addInputFloatAttribute(stat, MString("bone2Scale"), MString("b2S"), 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inIkRoot = addInputMatrixAttribute(stat, MString("ikRoot"), MString("ikR"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inIkUpVector = addInputMatrixAttribute(stat, MString("ikUpVector"), MString("ikUpV"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inIkEffector = addInputMatrixAttribute(stat, MString("ikEffector"), MString("ikEff"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inFkBone1 = addInputMatrixAttribute(stat, MString("fkBone1"), MString("fkB1"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inFkBone2 = addInputMatrixAttribute(stat, MString("fkBone2"), MString("fkB2"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inFkBone3 = addInputMatrixAttribute(stat, MString("fkBone3"), MString("fkB3"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inBlendIkFk = addInputFloatAttribute(stat, MString("blendFkIk"), MString("blend"), 0.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inActiveStretch = addInputIntAttribute(stat, MString("activeStretch"), MString("activeS"), 0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MString> alignAxisEnum = {MString("X"), MString("Y"), MString("Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inAlignAxis = addInputEnumAttribute(stat, MString("alignAxis"), MString("alignAxis"), 0, alignAxisEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inUpVectorAxis = addInputEnumAttribute(stat, MString("upVectorAxis"), MString("upVectorAxis"), 0, alignAxisEnum);;
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MString> negScaleEnum = {MString("None"), MString("X"), MString("Y"), MString("Z")};
    inNegativeScale = addInputEnumAttribute(stat, MString("negativeScale"), MString("negativeScale"), 0, negScaleEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inInvertIK = addInputFloatAttribute(stat, MString("invertIK"), MString("invertIK"), 1.0, -1.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}


    outBone1Transform = addOutputMatrixAttribute(stat, MString("bone1Transform"), MString("b1Trans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outBone2Transform = addOutputMatrixAttribute(stat, MString("bone2Transform"), MString("b2Trans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    outBone3Transform = addOutputMatrixAttribute(stat, MString("bone3Transform"), MString("b3Trans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {
                                inBone1Length,
                                inBone2Length,
                                inBone1Scale,
                                inBone2Scale,
                                inIkRoot,
                                inIkUpVector,
                                inIkEffector,
                                inFkBone1,
                                inFkBone2,
                                inFkBone3,
                                inBlendIkFk,
                                inActiveStretch,
                                inAlignAxis,
                                inUpVectorAxis,
                                inNegativeScale,
                                inInvertIK,
                            };

    vector<MObject> outputs = {
                                outBone1Transform,
                                outBone2Transform,
                                outBone3Transform
                            };

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}