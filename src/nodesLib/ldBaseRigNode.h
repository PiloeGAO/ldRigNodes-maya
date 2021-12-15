#ifndef BASE_RIG_NODE
#define BASE_RIG_NODE

#include <vector>

#include <maya/MPxNode.h>

#include <maya/MString.h>
#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MVector.h>

using namespace std;

class BaseRigNode : public MPxNode
{
public:
    // Add IO Int.
    static MObject addInputIntAttribute(MStatus &status, MString longName, MString shortName, int defaultValue,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);

    static MObject addInputIntArrayAttribute(MStatus &status, MString longName, MString shortName,
                                                bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOutputIntAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static int getInt(MDataBlock &dataBlock, MObject input);

    // Add IO Vectors.
    static MObject addInputVectorAttribute(MStatus &status, MString longName, MString shortName,
                                            double defaultValue, double minValue = -numeric_limits<double>::max(), double maxValue = numeric_limits<double>::max(),
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOutputVectorAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static MVector getVector(MDataBlock &dataBlock, MObject input);

    // Add IO Angle.
    static MObject addInputAngleAttribute(MStatus &status, MString longName, MString shortName,
                                            double defaultValue, double minValue = -numeric_limits<double>::max(), double maxValue = numeric_limits<double>::max(),
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOutputAngleAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static MAngle getAngle(MDataBlock &dataBlock, MObject input);


    // Add IO Float.
    static MObject addInputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            double defaultValue, double minValue = -numeric_limits<double>::max(), double maxValue = numeric_limits<double>::max(),
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);

    static MObject addInputFloatArrayAttribute(MStatus &status, MString longName, MString shortName, double defaultValue,
                                                bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOutputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static MObject addOutputArrayFloatAttribute(MStatus &status, MString longName, MString shortName,
                                                bool writable = false, bool storable = false, bool readable = true, bool hidden = false);

    static float getFloat(MDataBlock &dataBlock, MObject input);

    // Add IO Matrix.
    static MObject addInputMatrixAttribute(MStatus &status, MString longName, MString shortName, bool addToNode = true,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addInputArrayMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);

    static MObject addOutputMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);

    static MObject addOutputArrayMatrixAttribute(MStatus &status, MString longName, MString shortName,
                                                bool writable = false, bool storable = false, bool readable = true, bool hidden = false);

    static MTransformationMatrix getMatrix(MDataBlock &dataBlock, MObject input);
    
    // Add other IO types.
    static MObject addInputRampAttribute(MStatus &status, MString longName, MString shortName);

    static MObject addInputEnumAttribute(MStatus &status, MString longName, MString shortName,
                                            int defaultValue, vector<MString> enumArray,
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);

    static MObject addInputCompoundAttribute(MStatus &status, MString longName, MString shortName,
                                            vector<MObject> children, bool array = true);

    // Utils.
    static MVector getAxis(int axisAlign = 0);

    static void splitMTransformationMatrix(MTransformationMatrix matrix, MVector &position, MQuaternion &angle, double (&scale)[3]);

    // Set Depencies.
    static void setAttributeDepencies(vector<MObject> inputs, vector<MObject> outputs);
};

#endif