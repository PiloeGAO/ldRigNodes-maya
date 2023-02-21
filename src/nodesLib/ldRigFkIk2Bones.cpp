/**
 * @file ldRigFkIk2Bones.cpp
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

#include "ldRigFkIk2Bones.h"

MTypeId FkIk2Bones::id(0x01004);


MObject FkIk2Bones::inBone1Length;
MObject FkIk2Bones::inBone2Length;
MObject FkIk2Bones::inBone1Scale;
MObject FkIk2Bones::inBone2Scale;
MObject FkIk2Bones::inGlobalScale;
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

    // Get the inputs value.
    double bone1Length     = getFloat(data, inBone1Length);
    double bone2Length     = getFloat(data, inBone2Length);
    double bone1Scale      = getFloat(data, inBone1Scale);
    double bone2Scale      = getFloat(data, inBone2Scale);
    double globalScale     = getFloat(data, inGlobalScale);
    double blendIkFk       = getFloat(data, inBlendIkFk);
    int activeStretch      = getInt(data, inActiveStretch);
    int alignAxis          = getInt(data, inAlignAxis);
    int upVectorAxis       = getInt(data, inUpVectorAxis);
    int negativeScale      = getInt(data, inNegativeScale);
    double invertIK        = getFloat(data, inInvertIK);
    MTransformationMatrix ikRootTrans     = getMatrix(data, inIkRoot);
    MTransformationMatrix ikUpTrans       = getMatrix(data, inIkUpVector);
    MTransformationMatrix ikEffTrans      = getMatrix(data, inIkEffector);
    MTransformationMatrix fkB1Trans       = getMatrix(data, inFkBone1);
    MTransformationMatrix fkB2Trans       = getMatrix(data, inFkBone2);
    MTransformationMatrix fkB3Trans       = getMatrix(data, inFkBone3);

    MTransformationMatrix b1Transform, b2Transform, b3Transform;
    
    if(blendIkFk == 0.0)
    {
        b1Transform = fkB1Trans;
        b2Transform = fkB2Trans;
        b3Transform = fkB3Trans;
    }
    else
    {
        // Get the ik controllers position.
        MVector ikRootPos = ikRootTrans.translation(MSpace::kWorld);
        MVector ikUpPos = ikUpTrans.translation(MSpace::kWorld);
        MVector ikEffPos = ikEffTrans.translation(MSpace::kWorld);

        // Compute the final bone length.
        double b1Length = bone1Length * bone1Scale * globalScale;
        double b2Length = bone2Length * bone2Scale * globalScale;

        // Compute the ik.
        computeIk(ikRootPos, ikUpPos, ikEffPos, b1Length, b2Length, globalScale,
                    activeStretch, alignAxis, upVectorAxis, negativeScale, invertIK,
                    b1Transform, b2Transform, b3Transform);

        b3Transform.setRotationQuaternion(ikEffTrans.rotation().x, ikEffTrans.rotation().y, ikEffTrans.rotation().z, ikEffTrans.rotation().w);

        b1Transform = blendTransform(fkB1Trans, b1Transform, blendIkFk);
        b2Transform = blendTransform(fkB2Trans, b2Transform, blendIkFk);
        b3Transform = blendTransform(fkB3Trans, b3Transform, blendIkFk);
    }

    if(plug == outBone1Transform || plug == outBone2Transform || plug == outBone3Transform)
    {
        // Get the out handles.
        MDataHandle outBone1TransformHandle = data.outputValue(outBone1Transform);
        MDataHandle outBone2TransformHandle = data.outputValue(outBone2Transform);
        MDataHandle outBone3TransformHandle = data.outputValue(outBone3Transform);

        // Set the out values.
        outBone1TransformHandle.setMMatrix(b1Transform.asMatrix());
        outBone2TransformHandle.setMMatrix(b2Transform.asMatrix());
        outBone3TransformHandle.setMMatrix(b3Transform.asMatrix());

        outBone1TransformHandle.setClean();
        outBone2TransformHandle.setClean();
        outBone3TransformHandle.setClean();
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
    
    inGlobalScale = addInputFloatAttribute(stat, MString("globalScale"), MString("gS"), 1.0);
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
    
    // Parameters need to be intercaled to avoid int offset.
    vector<MString> alignAxisEnum = {MString("+X"), MString("+Y"), MString("+Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inAlignAxis = addInputEnumAttribute(stat, MString("alignAxis"), MString("alignAxis"), 0, alignAxisEnum);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    inActiveStretch = addInputIntAttribute(stat, MString("activateStretch"), MString("activateS"), 0);
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    vector<MString> upVectorAxisEnum = {MString("+X"), MString("+Y"), MString("+Z"), MString("-X"), MString("-Y"), MString("-Z")};
    inUpVectorAxis = addInputEnumAttribute(stat, MString("upVectorAxis"), MString("upVectorAxis"), 1, upVectorAxisEnum);;
    if(!stat) {stat.perror("addAttribute"); return stat;}
    
    inInvertIK = addInputFloatAttribute(stat, MString("invertIK"), MString("invertIK"), 1.0, -1.0, 1.0);
    if(!stat) {stat.perror("addAttribute"); return stat;}

    vector<MString> negScaleEnum = {MString("None"), MString("X"), MString("Y"), MString("Z")};
    inNegativeScale = addInputEnumAttribute(stat, MString("negativeScale"), MString("negativeScale"), 0, negScaleEnum);
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
                                inGlobalScale,
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

/**
 * @brief Compute the cosinus law.
 * 
 * @param a         double The length of the triangle segment a.
 * @param b         double The length of the triangle segment b.
 * @param c         double The length of the triangle segment c.
 * @return          double The cosinus law result.
 */
double FkIk2Bones::cosinusLaw(double a, double b, double c)
{
    double clampResult = (a*a + b*b - c*c)/(2.0 * a * b);

    if(clampResult < -1) {clampResult = -1; }
    else if (clampResult > 1) {clampResult = 1; }

    return acos(clampResult);
}

/**
 * @brief Build transform.
 * 
 * @param pos           MVector                 The position of the matrix.
 * @param axis0         MVector                 The orientation of the axis X.
 * @param axis1         MVector                 The orientation of the axis Y.
 * @param upVectorAxis  int                     The up vector axis.
 * @param negativeScale int                     The negative scale axis.
 * @param globalScale   double                  Global scale to apply.
 * @return              MTransformationMatrix   The transformation matrix.
 */
MTransformationMatrix FkIk2Bones::buildTransform(MVector pos, MVector axis0, MVector axis1,
                                    int alignAxis, int upVectorAxis, int negativeScale, double globalScale)
{
    MVector axisX;
    bool isAxisX = false;
    MVector axisY;
    bool isAxisY = false;
    MVector axisZ;
    bool isAxisZ = false;

    if (alignAxis == 0) { axisX = axis0; isAxisX = true; }
    else if (alignAxis == 1) { axisY = axis0; isAxisY = true; }
    else if (alignAxis == 2) { axisZ = axis0; isAxisZ = true; }
    else if (alignAxis == 3) { axisX = -axis0; isAxisX = true; }
    else if (alignAxis == 4) { axisY = -axis0; isAxisY = true; }
    else if (alignAxis == 5) { axisZ = - axis0; isAxisZ = true; }

    if (upVectorAxis == 0) { axisX = axis1; isAxisX = true; }
    else if (upVectorAxis == 1) { axisY = axis1; isAxisY = true; }
    else if (upVectorAxis == 2) { axisZ = axis1; isAxisZ = true; }
    else if (upVectorAxis == 3) { axisX = -axis1; isAxisX = true; }
    else if (upVectorAxis == 4) { axisY = -axis1; isAxisY = true; }
    else if (upVectorAxis == 5) { axisZ = -axis1; isAxisZ = true; }

    if(isAxisX && isAxisY) { axisZ = axisX ^ axisY; axisZ.normalize(); }
    else if (isAxisX && isAxisZ) { axisY = axisZ ^ axisX; axisY.normalize(); }
    else if (isAxisY && isAxisZ) { axisX = axisY ^ axisZ; axisX.normalize(); }
    else {axisX = MVector::xAxis; axisY = MVector::yAxis; axisZ = MVector::zAxis; }

    double matrix[4][4] = {
            axisX.x * globalScale, axisX.y * globalScale, axisX.z * globalScale, 0.0,
            axisY.x * globalScale, axisY.y * globalScale, axisY.z * globalScale, 0.0,
            axisZ.x * globalScale, axisZ.y * globalScale, axisZ.z * globalScale, 0.0,
            pos.x,   pos.y,   pos.z,   1.0
            };

    MMatrix transform = MMatrix(matrix);

    if(negativeScale > 0)
    {
        MMatrix symMatrix;

        if(negativeScale == 1) {double symMatrixArray[4][4] = {-1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1}; symMatrix = symMatrixArray; }
        else if(negativeScale == 2) {double symMatrixArray[4][4] = {1,0,0,0,0,-1,0,0,0,0,1,0,0,0,0,1}; symMatrix = symMatrixArray; }
        else if (negativeScale == 3) {double symMatrixArray[4][4] = {1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,1}; symMatrix = symMatrixArray; }

        transform = symMatrix * transform;
    }

    return MTransformationMatrix(transform);
}

/**
 * @brief Compute the ik transformations for bones 1 and 2.
 * 
 * @param rootPos       MVector                 Position of the root.
 * @param upPos         MVector                 Position of the up vector.
 * @param effPos        MVector                 Position of the effector.
 * @param b1Length      double                  Length of the bone 1.
 * @param b2Length      double                  Length of the bone 2.
 * @param globalScale   double                  Global scale to apply.
 * @param activeStretch int                     Is ik stretchable.
 * @param alignAxis     int                     Align axis.
 * @param upVectorAxis  int                     Up vector axis.
 * @param negativeScale int                     Is using negative scale.
 * @param invertIk      double                  Invert factor.
 * @param &b1Trans      MTransformationMatrix   Bone 1 output transformations.
 * @param &b2Trans      MTransformationMatrix   Bone 2 output transformations.
 * @param &b3Trans      MTransformationMatrix   Bone 3 output transformations.
 */
void FkIk2Bones::computeIk(MVector rootPos, MVector upPos, MVector effPos,
                double b1Length, double b2Length, double globalScale,
                int activeStretch, int alignAxis, int upVectorAxis,
                int negativeScale, double invertIk,
                MTransformationMatrix &b1Trans, MTransformationMatrix &b2Trans, MTransformationMatrix &b3Trans)
{
    // Compute the vector between the root and the effector.
    MVector toEff = effPos - rootPos;
    double ikLength = toEff.length();
    toEff.normalize();

    // Compute the vector between the root and the up vector.
    MVector toUp = upPos - rootPos;
    toUp.normalize();

    // Compute the ik angle.
    double ikAngle = cosinusLaw(b1Length, ikLength, b2Length) * invertIk;

    //Compute the IK space plan.
    MVector ikAxis = toEff ^ toUp;
    ikAxis.normalize();

    // Compute the Ik rotation.
    MQuaternion ikRot = MQuaternion(ikAngle, ikAxis);

    // Compute the bone 1 direction.
    MVector b1Dir = toEff.rotateBy(ikRot);

    // Stretch the bone length if needed.
    double maxChainLength = b1Length + b2Length;
    if(activeStretch && ikLength > maxChainLength)
    {
        double b1StretchFactor = b1Length / maxChainLength;
        double b2StretchFactor = b2Length / maxChainLength;
        b1Length = ikLength * b1StretchFactor;
        b2Length = ikLength * b2StretchFactor;
    }

    // Compute the bone 2 position.
    MVector b2Pos = rootPos + b1Dir * b1Length;

    // Compute the bone 2 direction.
    MVector b2Dir = effPos - b2Pos;
    b2Dir.normalize();

    // Compute the bone 3 position.
    MVector b3Pos = b2Pos + b2Dir * b2Length;

    // Compute the bones tranformations.
    b1Trans = buildTransform(rootPos, b1Dir, ikAxis, alignAxis, upVectorAxis, negativeScale, globalScale);
    b2Trans = buildTransform(b2Pos, b2Dir, ikAxis, alignAxis, upVectorAxis, negativeScale, globalScale);
    b3Trans = buildTransform(b3Pos, b2Dir, ikAxis, alignAxis, upVectorAxis, negativeScale, globalScale);
}

/**
 * @brief Blend between two matrixes.
 * 
 * @param matrixA       MTransformationMatrix   Matrix A.
 * @param matrixB       MTransformationMatrix   Matrix B.
 * @param blend         double                  Blend factor.
 * @return              MTransformationMatrix   Result matrix.
 */
MTransformationMatrix FkIk2Bones::blendTransform(MTransformationMatrix matrixA, MTransformationMatrix matrixB, double blend)
{
    //Split the maxtrix datas.
    MVector aPos;
    MQuaternion aRot;
    double aScl[3];
    splitMTransformationMatrix(matrixA, aPos, aRot, aScl);

    MVector bPos;
    MQuaternion bRot;
    double bScl[3];
    splitMTransformationMatrix(matrixB, bPos, bRot, bScl);

    MVector resultPos = (bPos - aPos) * blend + aPos;
    MQuaternion resultRot = slerp(aRot, bRot, blend);
    double resultScl[3] = {
        (bScl[0] - aScl[0]) * blend + aScl[0],
        (bScl[1] - aScl[1]) * blend + aScl[1],
        (bScl[2] - aScl[2]) * blend + aScl[2],
    };

    MTransformationMatrix matrixResult;
    matrixResult.setTranslation(resultPos, MSpace::kWorld);
    matrixResult.setRotationQuaternion(resultRot.x, resultRot.y, resultRot.z, resultRot.w);
    matrixResult.setScale(resultScl, MSpace::kWorld);

    return matrixResult;
}