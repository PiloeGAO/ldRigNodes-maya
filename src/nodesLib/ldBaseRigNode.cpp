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

#include <maya/MString.h>
#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>

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
 * @param dataBlock MDataBlock The
 * @param input 
 * @param output 
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

/**
 * @brief Set attribute depencies.
 * 
 * @param inputs        MObject Inputs list.
 * @param inputLength   int     Number of inputs.
 * @param outputs       MObject Outputs list.
 * @param ouputLength   int     Number of outputs.
 */
void BaseRigNode::setAttributeDepencies(MObject inputs[], int inputLength, MObject outputs[], int ouputLength){
    MStatus status;

    for (int i = 0; i < inputLength; i++)
    {
        for (int o = 0; o < ouputLength; o++)
        {
            status = attributeAffects(inputs[i], outputs[o]);
            if(!status) {status.perror("attributeAffects");}
        }
        
    }
    
}