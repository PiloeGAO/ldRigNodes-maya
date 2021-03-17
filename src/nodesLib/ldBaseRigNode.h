#ifndef BASE_RIG_NODE
#define BASE_RIG_NODE

#include <maya/MPxNode.h>

#include <maya/MString.h>
#include <maya/MStatus.h>
#include <maya/MObject.h>

using namespace std;

class BaseRigNode : public MPxNode
{
public:
    // Add IO Tnt.
    static MObject addInputIntAttribute(MStatus &status, MString longName, MString shortName, int defaultValue,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);

    static MObject addInputIntArrayAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOuputIntAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static int getInt(MDataBlock &dataBlock, MObject input);

    // Add IO Float.
    static MObject addInputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            double defaultValue, double minValue = -numeric_limits<double>::max(), double maxValue = numeric_limits<double>::max(),
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOuputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static float getFloat(MDataBlock &dataBlock, MObject input);

    // Add IO Matrix.
    static MObject addInputMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOuputMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);

    static MTransformationMatrix getMatrix(MDataBlock &dataBlock, MObject input);
    
    // Set Depencies.
    static void setAttributeDepencies(MObject inputs[], int inputLength, MObject outputs[], int ouputLength);
};

#endif