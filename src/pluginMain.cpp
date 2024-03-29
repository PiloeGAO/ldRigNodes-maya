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
#include "nodesLib/ldRigBasicConstraint.h"
#include "nodesLib/ldRigCurveNode.h"
#include "nodesLib/ldRigTwistNode.h"
#include "nodesLib/ldRigFkIk2Bones.h"
#include "nodesLib/ldRigComparaisonNode.h"
#include "nodesLib/ldRigClavicle.h"
#include "nodesLib/ldRigFitNode.h"
#include "nodesLib/ldRigFootRollNode.h"
#include "nodesLib/ldRigSpaceSwitchNode.h"
#include "nodesLib/ldRigLogicalAndNode.h"
#include "nodesLib/ldRigLogicalOrNode.h"
#include "nodesLib/ldRigSelectCasesNode.h"
#include "nodesLib/ldRigIkPlane.h"
#include "nodesLib/ldRigFloatSwitchNode.h"
#include "nodesLib/ldRigBlendMatrix.h"
#include "nodesLib/ldRigEyelidNode.h"

/**
 * @brief Load the plugin in Maya.
 * 
 * @param obj 
 * @return MStatus 
 */
MStatus initializePlugin(MObject obj)
{
    MStatus status;
    MFnPlugin plugin(obj, "Leo DEPOIX", "0.2.0", "Any");

    /* Loading Nodes. */
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

    status = plugin.registerNode("ldRigClavicle", RigClavicle::id, &RigClavicle::creator, &RigClavicle::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigFitNode", RigFitNode::id, &RigFitNode::creator, &RigFitNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigFootRollNode", RigFootRollNode::id, &RigFootRollNode::creator, &RigFootRollNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigSpaceSwitchNode", RigSpaceSwitchNode::id, &RigSpaceSwitchNode::creator, &RigSpaceSwitchNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigLogicalAndNode", RigLogicalAndNode::id, &RigLogicalAndNode::creator, &RigLogicalAndNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigLogicalOrNode", RigLogicalOrNode::id, &RigLogicalOrNode::creator, &RigLogicalOrNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigSelectCasesNode", RigSelectCasesNode::id, &RigSelectCasesNode::creator, &RigSelectCasesNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}
    
    status = plugin.registerNode("ldRigIkPlaneNode", RigIkPlane::id, &RigIkPlane::creator, &RigIkPlane::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigFloatSwitchNode", RigFloatSwitchNode::id, &RigFloatSwitchNode::creator, &RigFloatSwitchNode::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigBlendMatrixNode", ldRigBlendMatrix::id, &ldRigBlendMatrix::creator, &ldRigBlendMatrix::initialize);
    if(!status) {status.perror("registerNode"); return status;}

    status = plugin.registerNode("ldRigEyelidNode", ldRigEyelidNode::id, &ldRigEyelidNode::creator, &ldRigEyelidNode::initialize);
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

    status = plugin.deregisterNode(RigClavicle::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigFitNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigFootRollNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigSpaceSwitchNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigLogicalAndNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigLogicalOrNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigSelectCasesNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}
    
    status = plugin.deregisterNode(RigIkPlane::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(RigFloatSwitchNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(ldRigBlendMatrix::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    status = plugin.deregisterNode(ldRigEyelidNode::id);
    if(!status) {status.perror("deregisterNode"); return status;}

    return status;
}