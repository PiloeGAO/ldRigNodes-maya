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
#include "nodesLib/ldAddFloat.h"
#include "nodesLib/ldBasicConstraint.h"
#include "nodesLib/ldRigCurveNode.h"
#include "nodesLib/ldTwistNode.h"
#include "nodesLib/ldFkIk2Bones.h"
#include "nodesLib/ldRigComparaisonNode.h"

/* Setup defines */
#define PLUGIN_COMPANY "Leo DEPOIX"
#define PLUGIN_VERSION "0.1"

/**
 * @brief Load the plugin in Maya.
 * 
 * @param obj 
 * @return MStatus 
 */
MStatus initializePlugin(MObject obj)
{
    MStatus status;
    MFnPlugin plugin(obj, PLUGIN_COMPANY, PLUGIN_VERSION, "Any");

    /* Loading Nodes. */
    status = plugin.registerNode("ldAddFloat", AddFloat::id, &AddFloat::creator, &AddFloat::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldBasicConstraint", BasicConstraint::id, &BasicConstraint::creator, &BasicConstraint::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigCurveNode", RigCurveNode::id, &RigCurveNode::creator, &RigCurveNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigTwistNode", TwistNode::id, &TwistNode::creator, &TwistNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigFkIk2Bones", FkIk2Bones::id, &FkIk2Bones::creator, &FkIk2Bones::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigComparaisonNode", RigComparaisonNode::id, &RigComparaisonNode::creator, &RigComparaisonNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}

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

    /* Unloading Nodes. */
    status = plugin.deregisterNode(AddFloat::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(BasicConstraint::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigCurveNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(TwistNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(FkIk2Bones::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(RigComparaisonNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    return status;
}