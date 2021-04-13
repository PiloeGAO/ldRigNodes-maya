/**
 * @file ldRigIkPlane.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com), Guillaume Baratte (Initial work in Python)
 * @brief Register anj ik plane node.
 * @version 0.1
 * @date 2021-04-13
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

#include "ldRigIkPlane.h"

MTypeId RigIkPlane::id(0x01013);

MObject RigIkPlane::inRootTransform;
MObject RigIkPlane::inEffTransform;
MObject RigIkPlane::inUpVectorTransform;
    
MObject RigIkPlane::outTransform;

/**
 * @brief Compute the addition between float A and float B.
 * 
 * @param plug 
 * @param data 
 * @return MStatus 
 */
MStatus RigIkPlane::compute(const MPlug& plug, MDataBlock& data)
{
    MStatus returnStatus;
    
    if(plug == outTransform)
    {
        // Get the matrix for each elements.
        MTransformationMatrix rootTrans = getMatrix(data, inRootTransform);
        MTransformationMatrix effTrans = getMatrix(data, inEffTransform);
        MTransformationMatrix upVectorTrans = getMatrix(data, inUpVectorTransform);

        // Getting position from matrix.
        MVector rootPos = rootTrans.translation(MSpace::kWorld);
        MVector effPos = effTrans.translation(MSpace::kWorld);
        MVector upVectorPos = upVectorTrans.translation(MSpace::kWorld);

        // Compute the ikPlane.
        MVector rootEff = effPos - rootPos;
        MVector resultPos = rootPos + rootEff * 0.5;
        rootEff.normalize();
        MVector rootUp = (upVectorPos - rootPos).normal();
        MVector ikAxis = (rootUp ^ rootEff).normal();

        MVector axisX = ikAxis;
        MVector axisY = -rootEff;
        MVector axisZ = (axisX ^ axisY).normal();
        cout << axisX << endl;
        cout << axisY << endl;
        cout << axisZ << endl;

        double outputMatrix[4][4] = {
            axisX.x, axisX.y, axisX.z, 0.0,
            axisY.x, axisY.y, axisY.z, 0.0,
            axisZ.x, axisZ.y, axisZ.z, 0.0,
            resultPos.x, resultPos.y, resultPos.z, 1.0
        };

        // Build out matrix.
        MMatrix outTrans = MMatrix(outputMatrix);

        // Get the out handle and set out data. 
        MDataHandle outTransformHandle = data.outputValue(outTransform);
        outTransformHandle.setMMatrix(outTrans);
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
void* RigIkPlane::creator()
{
    return new RigIkPlane();
}

/**
 * @brief Initialize the node inputs and outputs.
 * 
 * @return MStatus 
 */
MStatus RigIkPlane::initialize()
{
    MStatus stat;

    inRootTransform = addInputMatrixAttribute(stat, MString("rootTransform"), MString("rootTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inEffTransform = addInputMatrixAttribute(stat, MString("effTransform"), MString("effTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inUpVectorTransform = addInputMatrixAttribute(stat, MString("upVectorTransform"), MString("upVectorTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    outTransform = addOutputMatrixAttribute(stat, MString("outTranform"), MString("outTrans"));
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MObject> inputs = {inRootTransform, inEffTransform, inUpVectorTransform};
    vector<MObject> outputs = {outTransform};

    setAttributeDepencies(inputs,outputs);

    return MS::kSuccess;
}