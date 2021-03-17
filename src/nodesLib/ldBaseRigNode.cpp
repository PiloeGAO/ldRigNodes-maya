/**
 * @file ldBaseRigNode.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register a rig node.
 * @version 0.1
 * @date 2021-01-28
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <maya/MFnNumericAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnCompoundAttribute.h>

#include <maya/MString.h>
#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>
#include <maya/MAngle.h>
#include <maya/MQuaternion.h>
#include <maya/MRampAttribute.h>

#include "ldBaseRigNode.h"

using namespace std;

/**
 * @brief Add a int input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param defaultValue  int     Default value.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputIntAttribute(MStatus &status, MString longName, MString shortName, int defaultValue,
                            bool writable, bool storable, bool keyable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kInt, defaultValue);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setKeyable(keyable);
    numAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}
/**
 * @brief Add a int array input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputIntArrayAttribute(MStatus &status, MString longName, MString shortName,
                            bool writable, bool storable, bool keyable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kInt);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setKeyable(keyable);
    numAttribFn.setHidden(hidden);
    numAttribFn.setArray(true);
    numAttribFn.setUsesArrayDataBuilder(true);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a int output attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param readable  bool    Allow the attribute to be readable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute.
 */
MObject BaseRigNode::addOuputIntAttribute(MStatus &status, MString longName, MString shortName,
                            bool writable, bool storable, bool readable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kInt);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setReadable(readable);
    numAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Get int stored in a MObject.
 * 
 * @param dataBlock MDataBlock  The data block of the node.
 * @param input     MObject     The int input.
 */
int BaseRigNode::getInt(MDataBlock &dataBlock, MObject input)
{
    MStatus status;
    MDataHandle inIntHandle = dataBlock.inputValue(input, &status);

    if(status != MS::kSuccess)
    { cerr << "ERROR getting float data" << endl; return -numeric_limits<int16_t>::max(); }
    else
    { return inIntHandle.asInt(); }
}

//***********************************************************************************//
/**
 * @brief Add a vector input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param defaultValue  double  Default value.
 * @param minValue      double  Min value.
 * @param maxValue      double  Max value.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputVectorAttribute(MStatus &status, MString longName, MString shortName,
                                double defaultValue, double minValue, double maxValue,
                                bool writable, bool storable, bool keyable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::k3Float, defaultValue);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setKeyable(keyable);
    numAttribFn.setHidden(hidden);

    if(minValue != -numeric_limits<double>::max()) {numAttribFn.setMin(minValue);}
    if(maxValue != numeric_limits<double>::max()) {numAttribFn.setMax(maxValue);}

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a vector output attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param readable  bool    Allow the attribute to be readable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute.
 */
MObject BaseRigNode::addOuputVectorAttribute(MStatus &status, MString longName, MString shortName,
                                bool writable, bool storable, bool readable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::k3Float);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setReadable(readable);
    numAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Get vector stored in a MObject.
 * 
 * @param dataBlock MDataBlock  The data block of the node.
 * @param input     MObject     The vector input.
 */
MVector BaseRigNode::getVector(MDataBlock &dataBlock, MObject input)
{
    MStatus status;
    MDataHandle inVectorHandle = dataBlock.inputValue(input, &status);

    if(status != MS::kSuccess)
    { cerr << "ERROR getting float data" << endl; return MVector(-numeric_limits<double>::max(), -numeric_limits<double>::max(),-numeric_limits<double>::max()); }
    else
    { return inVectorHandle.asVector(); }
}

//***********************************************************************************//
/**
 * @brief Add angle input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param defaultValue  double  Default value.
 * @param minValue      double  Min value.
 * @param maxValue      double  Max value.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputAngleAttribute(MStatus &status, MString longName, MString shortName,
                                        double defaultValue, double minValue, double maxValue,
                                        bool writable, bool storable, bool keyable, bool hidden)
{
    MFnUnitAttribute unitAttribFn;

    MObject attrib = unitAttribFn.create(longName, shortName, MAngle(defaultValue, MAngle::kDegrees));

    unitAttribFn.setWritable(writable);
    unitAttribFn.setStorable(storable);
    unitAttribFn.setKeyable(keyable);
    unitAttribFn.setHidden(hidden);

    if(minValue != -numeric_limits<double>::max()) {unitAttribFn.setMin(minValue);}
    if(maxValue != numeric_limits<double>::max()) {unitAttribFn.setMax(maxValue);}

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add angle output attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param readable  bool    Allow the attribute to be readable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute.
 */
MObject BaseRigNode::addOuputAngleAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable, bool storable, bool readable, bool hidden)
{
    MFnUnitAttribute unitAttribFn;

    MObject attrib = unitAttribFn.create(longName, shortName, MFnUnitAttribute::kAngle);

    unitAttribFn.setWritable(writable);
    unitAttribFn.setStorable(storable);
    unitAttribFn.setReadable(readable);
    unitAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Get angle stored in a MObject.
 * 
 * @param dataBlock MDataBlock  The data block of the node.
 * @param input     MObject     The float input.
 */
MAngle BaseRigNode::getAngle(MDataBlock &dataBlock, MObject input)
{
    MStatus status;
    MDataHandle inAngleHandle = dataBlock.inputValue(input, &status);

    if(status != MS::kSuccess)
    { cerr << "ERROR getting float data" << endl; return -numeric_limits<double>::max(); }
    else
    { return inAngleHandle.asAngle(); }
}


//***********************************************************************************//
/**
 * @brief Add a float input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param defaultValue  double  Default value.
 * @param minValue      double  Min value.
 * @param maxValue      double  Max value.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                        double defaultValue, double minValue, double maxValue,
                                        bool writable, bool storable, bool keyable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kFloat, defaultValue);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setKeyable(keyable);
    numAttribFn.setHidden(hidden);

    if(minValue != -numeric_limits<double>::max()) {numAttribFn.setMin(minValue);}
    if(maxValue != numeric_limits<double>::max()) {numAttribFn.setMax(maxValue);}

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a float array input attribute.
 * 
 * @param status        MStatus The status of the creation.
 * @param longName      char    Long name.
 * @param shortName     char    Short name.
 * @param defaultValue  double  Default value.
 * @param minValue      double  Min value.
 * @param maxValue      double  Max value.
 * @param writable      bool    Allow the attribute to be writable.
 * @param storable      bool    Allow the attribute to be storable.
 * @param keyable       bool    Allow the attribute to be keyable.
 * @param hidden        bool    Allow the attribute to be hidden.
 * @return              MObject The attribute.
 */
MObject BaseRigNode::addInputFloatArrayAttribute(MStatus &status, MString longName, MString shortName, double defaultValue,
                                        bool writable, bool storable, bool keyable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kFloat, defaultValue);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setKeyable(keyable);
    numAttribFn.setHidden(hidden);
    numAttribFn.setArray(true);
    numAttribFn.setUsesArrayDataBuilder(true);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a float output attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param readable  bool    Allow the attribute to be readable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute.
 */
MObject BaseRigNode::addOuputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable, bool storable, bool readable, bool hidden)
{
    MFnNumericAttribute numAttribFn;

    MObject attrib = numAttribFn.create(longName, shortName, MFnNumericData::kFloat);

    numAttribFn.setWritable(writable);
    numAttribFn.setStorable(storable);
    numAttribFn.setReadable(readable);
    numAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Get float stored in a MObject.
 * 
 * @param dataBlock MDataBlock  The data block of the node.
 * @param input     MObject     The float input.
 */
float BaseRigNode::getFloat(MDataBlock &dataBlock, MObject input)
{
    MStatus status;
    MDataHandle inFloatHandle = dataBlock.inputValue(input, &status);

    if(status != MS::kSuccess)
    { cerr << "ERROR getting float data" << endl; return -numeric_limits<double>::max(); }
    else
    { return inFloatHandle.asFloat(); }
}

//***********************************************************************************//
/**
 * @brief Add a matrix input attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param keyable   bool    Allow the attribute to be keyable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute. 
 */
MObject BaseRigNode::addInputMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                bool writable, bool storable, bool keyable, bool hidden)
{
    MFnMatrixAttribute matAttribFn;

    MObject attrib = matAttribFn.create(longName, shortName);

    matAttribFn.setWritable(writable);
    matAttribFn.setStorable(storable);
    matAttribFn.setKeyable(keyable);
    matAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a matrix output attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @param writable  bool    Allow the attribute to be writable.
 * @param storable  bool    Allow the attribute to be storable.
 * @param readable  bool    Allow the attribute to be readable.
 * @param hidden    bool    Allow the attribute to be hidden.
 * @return          MObject The attribute.
 */
MObject BaseRigNode::addOuputMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable, bool storable, bool readable, bool hidden)
{
    MFnMatrixAttribute matAttribFn;

    MObject attrib = matAttribFn.create(longName, shortName);

    matAttribFn.setWritable(writable);
    matAttribFn.setStorable(storable);
    matAttribFn.setReadable(readable);
    matAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Get the transformation matrix stored in a MObject.
 * 
 * @param dataBlock MDataBlock  The data block of the node.
 * @param input     MObject     The float input.
 */
MTransformationMatrix BaseRigNode::getMatrix(MDataBlock &dataBlock, MObject input)
{
    MStatus status;

    MDataHandle inTransformHandle = dataBlock.inputValue(input, &status);
    
    if(status != MS::kSuccess)
    { cerr << "ERROR getting data" << endl; return MTransformationMatrix(); }
    else
    { return inTransformHandle.asMatrix(); }
}

//***********************************************************************************//
/**
 * @brief Add a ramp input attribute.
 * 
 * @param status    MStatus The status of the creation.
 * @param longName  MString The long name.
 * @param shortName MString The short name.
 * @return MObject  The attribute.
 */
MObject BaseRigNode::addInputRampAttribute(MStatus &status, MString longName, MString shortName)
{
    MRampAttribute rampAttribFn;

    MObject attrib = rampAttribFn.createCurveRamp(longName, shortName);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add an enum input attribute.
 * 
 * @param status        MStatus         The status of the creation.
 * @param longName      MString         The long name.
 * @param shortName     MString         The short name.
 * @param defaultValue  int             The default index of the enum.
 * @param enumArray     vector<MString> The data stored inside of the enum.
 * @param writable      bool            Allow the attribute to be writable.
 * @param storable      bool            Allow the attribute to be storable.
 * @param readable      bool            Allow the attribute to be readable.
 * @param hidden        bool            Allow the attribute to be hidden.
 * @return              MObject         The attribute.
 */
MObject BaseRigNode::addInputEnumAttribute(MStatus &status, MString longName, MString shortName,
                                            int defaultValue, vector<MString> enumArray,
                                            bool writable, bool storable, bool keyable, bool hidden)
{
    MFnEnumAttribute enumAttribFn;

    MObject attrib = enumAttribFn.create(longName, shortName, defaultValue);

    for (int i = 0; i < enumArray.capacity(); i++)
    { enumAttribFn.addField(enumArray[i], i); }

    enumAttribFn.setWritable(writable);
    enumAttribFn.setStorable(storable);
    enumAttribFn.setKeyable(keyable);
    enumAttribFn.setHidden(hidden);

    status = addAttribute(attrib);

    return attrib;
}

/**
 * @brief Add a compound input attribute.
 * 
 * @param status        MStatus         The status of the creation.
 * @param longName      MString         The long name.
 * @param shortName     MString         The short name.
 * @param children      vector<MObject> The children of the compound.
 * @param array         bool            Is compound an array of data.
 * @return              MObject         The attribute.
 */
MObject BaseRigNode::addInputCompoundAttribute(MStatus &status, MString longName, MString shortName,
                                            vector<MObject> children, bool array)
{
    MFnCompoundAttribute compoundAttribFn;

    MObject attrib = compoundAttribFn.create(longName, shortName);

    for (int i = 0; i < children.capacity(); i++)
    {
        compoundAttribFn.addChild(children[i]);
    }
    
    compoundAttribFn.setArray(array);

    compoundAttribFn.setStorable(true);
    compoundAttribFn.setWritable(true);
    compoundAttribFn.setHidden(false);

    status = addAttribute(attrib);

    return attrib;
}

//***********************************************************************************//
/**
 * @brief Get axis from an enum index.
 * 
 * @param axisAlign int Index.
 * @return MVector Corresponding axis.
 */
MVector BaseRigNode::getAxis(int axisAlign)
{
    if(axisAlign == 1) { return MVector::yAxis; }
    else if (axisAlign == 2) { return MVector::zAxis; }
    else if (axisAlign == 3) { return MVector::xNegAxis; }
    else if (axisAlign == 4) { return MVector::yNegAxis; }
    else if (axisAlign == 5) { return MVector::zNegAxis; }

    return MVector::xAxis;
}

/**
 * @brief Splitting a MTransformationMatrix in position, rotation and scale.
 * 
 * @param matrix    MTransformationMatrix   The input matrix.
 * @param position  MVector                 The position.
 * @param rotation  MQuaternion             The rotation.
 * @param scale     double[3]               The scale.
 */
void BaseRigNode::splitMTransformationMatrix(MTransformationMatrix matrix, MVector &position, MQuaternion &rotation, double (&scale)[3])
{
    position = matrix.getTranslation(MSpace::kWorld);
    rotation = matrix.rotation();
    matrix.getScale(scale, MSpace::kWorld);
}

//***********************************************************************************//
/**
 * @brief Set attribute depencies.
 * 
 * @param inputs        MObject Inputs list.
 * @param inputLength   int     Number of inputs.
 * @param outputs       MObject Outputs list.
 * @param ouputLength   int     Number of outputs.
 */
void BaseRigNode::setAttributeDepencies(vector<MObject> inputs, vector<MObject> outputs){
    MStatus status;

    for (int i = 0; i < inputs.capacity(); i++)
    {
        for (int o = 0; o < outputs.capacity(); o++)
        {
            status = attributeAffects(inputs[i], outputs[o]);
            if(!status) {status.perror("attributeAffects");}
        }
        
    }
    
}