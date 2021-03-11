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
    static MObject addInputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            double defaultValue, double minValue = -numeric_limits<double>::max(), double maxValue = numeric_limits<double>::max(),
                                            bool writable = true, bool storable = true, bool keyable = true, bool hidden = false);
    
    static MObject addOuputFloatAttribute(MStatus &status, MString longName, MString shortName,
                                            bool writable = false, bool storable = false, bool readable = true, bool hidden = false);
    
    static void setAttributeDepencies(MObject inputs[], int inputLength, MObject outputs[], int ouputLength);
};

#endif