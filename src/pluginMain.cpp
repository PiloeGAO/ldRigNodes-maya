/**
 * @file pluginMain.cpp
 * @author Leo DEPOIX (leonumerique@gmail.com)
 * @brief Register node library.
 * @version 0.1
 * @date 2021-01-29
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <maya/MIOStream.h>

#include <maya/MFnPlugin.h>


#include "pluginMain.h"

/* Custom Nodes */
#include "nodesLib/addFloat.h"

/* Setup defines */
#define PLUGIN_COMPANY "Leo DEPOIX"

/**
 * @brief Load the plugin in Maya.
 * 
 * @param obj 
 * @return MStatus 
 */
MStatus initializePlugin(MObject obj)
{
    MStatus status;
    MFnPlugin plugin(obj, PLUGIN_COMPANY, "0.1", "Any");

    status = plugin.registerNode("addFloat", AddFloat::id, &AddFloat::creator, &AddFloat::initialize);

    if(!status)
    {
        status.perror("registerNode");
        return status;
    }

    return status;
}

/**
 * @brief Unload the plugin in Maya.
 * 
 * @param obj 
 * @return MStatus 
 */
MStatus uninitializePlugin(MObject obj)
{
    MStatus status;
    MFnPlugin plugin(obj);

    status = plugin.deregisterNode((MTypeId) 0x08000);

    if(!status)
    {
        status.perror("deregisterNode");
        return status;
    }

    return status;
}