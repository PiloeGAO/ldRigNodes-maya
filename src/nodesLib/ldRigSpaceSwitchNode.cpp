/**
 * @file ldRigSpaceSwitchNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a space switch node.
 * @version 0.1
 * @date 2021-04-07
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
#include <maya/MArrayDataHandle.h>

#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>

#include "ldRigSpaceSwitchNode.h"

MTypeId RigSpaceSwitchNode::id(0x01009);

MObject  RigSpaceSwitchNode::inParentMatrix;
MObject  RigSpaceSwitchNode::inParentInverseMatrix;
MObject  RigSpaceSwitchNode::inSpaceMatrix;
MObject  RigSpaceSwitchNode::inSpaceOffset;
MObject  RigSpaceSwitchNode::inSpaceWeight;
MObject  RigSpaceSwitchNode::inSpaceType;
MObject  RigSpaceSwitchNode::inSpaces;

MObject RigSpaceSwitchNode::outTransform;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigSpaceSwitchNode::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransform)
    {
        MArrayDataHandle inSpacesHandle = data.inputArrayValue(inSpaces);
        int spacesCount = inSpacesHandle.elementCount();

        MTransformationMatrix parentMatrix = getMatrix(data, inParentMatrix);
        MTransformationMatrix parentInverseMatrix = getMatrix(data, inParentInverseMatrix);

        MVector finalPosition = parentMatrix.translation(MSpace::kWorld);
        MQuaternion finalRotation = parentMatrix.rotation();
        double finalScale[3];
        parentMatrix.getScale(finalScale, MSpace::kWorld);

        for (int i = 0; i < spacesCount; i++)
        {
            // Get space data from array.
            inSpacesHandle.jumpToArrayElement(i);
            MDataHandle spaceDatas = inSpacesHandle.inputValue();

            // Get sub datas.
            MMatrix spaceMatrix = spaceDatas.child(inSpaceMatrix).asMatrix();
            MMatrix spaceOffset = spaceDatas.child(inSpaceOffset).asMatrix();
            double spaceWeight = spaceDatas.child(inSpaceWeight).asFloat();
            int spaceType = spaceDatas.child(inSpaceType).asInt();

            // Compute world matrix.
            MTransformationMatrix worldMatrix = MTransformationMatrix(spaceOffset * spaceMatrix);

            MVector worldPosition = worldMatrix.translation(MSpace::kWorld);
            MQuaternion worldRotation = worldMatrix.rotation();
            double worldScale[3];
            worldMatrix.getScale(worldScale, MSpace::kWorld);

            // Compute using the spaceType selection.
            if(spaceType == 0)
            {
                finalPosition = (worldPosition - finalPosition) * spaceWeight + finalPosition;
                finalRotation = slerp(finalRotation, worldRotation, spaceWeight);
                finalScale[0] = (worldScale[0] - finalScale[0]) * spaceWeight + finalScale[0];
                finalScale[1] = (worldScale[1] - finalScale[1]) * spaceWeight + finalScale[1];
                finalScale[2] = (worldScale[2] - finalScale[2]) * spaceWeight + finalScale[2];
            }
            else if (spaceType == 1)
            {
                finalPosition = (worldPosition - finalPosition) * spaceWeight + finalPosition;
                finalScale[0] = (worldScale[0] - finalScale[0]) * spaceWeight + finalScale[0];
                finalScale[1] = (worldScale[1] - finalScale[1]) * spaceWeight + finalScale[1];
                finalScale[2] = (worldScale[2] - finalScale[2]) * spaceWeight + finalScale[2];
            }
            else if (spaceType == 2)
            {
                finalRotation = slerp(finalRotation, worldRotation, spaceWeight);
                finalScale[0] = (worldScale[0] - finalScale[0]) * spaceWeight + finalScale[0];
                finalScale[1] = (worldScale[1] - finalScale[1]) * spaceWeight + finalScale[1];
                finalScale[2] = (worldScale[2] - finalScale[2]) * spaceWeight + finalScale[2];
            }
            else if (spaceType == 3)
            {
                finalPosition = (worldPosition - finalPosition) * spaceWeight + finalPosition;
                finalRotation = slerp(finalRotation, worldRotation, spaceWeight);
            }
            else if (spaceType == 4)
            {
                finalScale[0] = (worldScale[0] - finalScale[0]) * spaceWeight + finalScale[0];
                finalScale[1] = (worldScale[1] - finalScale[1]) * spaceWeight + finalScale[1];
                finalScale[2] = (worldScale[2] - finalScale[2]) * spaceWeight + finalScale[2];
            }
            else if (spaceType == 5)
            {
                finalRotation = slerp(finalRotation, worldRotation, spaceWeight);
            }
            else if (spaceType == 6)
            {
                finalPosition = (worldPosition - finalPosition) * spaceWeight + finalPosition;
            }
        }

        MTransformationMatrix finalTransform;
        finalTransform.setTranslation(finalPosition, MSpace::kWorld);
        finalTransform.setRotationQuaternion(finalRotation.x, finalRotation.y, finalRotation.z, finalRotation.w);
        finalTransform.setScale(finalScale, MSpace::kWorld);
        
        MMatrix tranform = finalTransform.asMatrix() * parentInverseMatrix.asMatrix();

        MDataHandle outTransformHandle = data.outputValue(outTransform);

        outTransformHandle.setMMatrix(tranform);
        outTransformHandle.setClean();
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
void* RigSpaceSwitchNode::creator()
{
    return new RigSpaceSwitchNode();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigSpaceSwitchNode::initialize()
{
    MStatus stat;
    
    inParentMatrix = addInputMatrixAttribute(stat, MString("parentMatrix"), MString("parentMatrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inParentInverseMatrix = addInputMatrixAttribute(stat, MString("parentInverseMatrix"), MString("parentInverseMatrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceMatrix = addInputMatrixAttribute(stat, MString("matrix"), MString("matrix"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceOffset = addInputMatrixAttribute(stat, MString("offset"), MString("offset"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaceWeight = addInputFloatAttribute(stat, MString("weight"), MString("weight"), 1.0, 0.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> spaceTypeEnum = {MString("SRT"), MString("ST"), MString("SR"), MString("RT"), MString("S"), MString("R"), MString("T")};
    inSpaceType = addInputEnumAttribute(stat, MString("type"), MString("type"), 0, spaceTypeEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inSpaces = addInputCompoundAttribute(stat, MString("spaces"), MString("spaces"), vector<MObject> {inSpaceType, inSpaceWeight, inSpaceOffset, inSpaceMatrix});
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outTransform = addOutputMatrixAttribute(stat, MString("outTranform"), MString("outTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inParentMatrix, inParentInverseMatrix, inSpaces};
    vector<MObject> outputs = {outTransform};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}