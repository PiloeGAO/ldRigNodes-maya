set(SOURCE_FILES
    "core/bezierCurve.cpp"
    "core/curve.cpp"
    "nodesLib/ldBaseRigNode.cpp"
    "nodesLib/ldRigBasicConstraint.cpp"
    "nodesLib/ldRigCurveNode.cpp"
    "nodesLib/ldRigTwistNode.cpp"
    "nodesLib/ldRigFkIk2Bones.cpp"
    "nodesLib/ldRigComparaisonNode.cpp"
    "nodesLib/ldRigClavicle.cpp"
    "nodesLib/ldRigFitNode.cpp"
    "nodesLib/ldRigFootRollNode.cpp"
    "nodesLib/ldRigSpaceSwitchNode.cpp"
    "nodesLib/ldRigLogicalAndNode.cpp"
    "pluginMain.cpp")

file(GLOB_RECURSE SRC_FILE *.h *.cpp)

MESSAGE(STATUS "SourceFile" ${SRC_FILE})

find_package(Maya REQUIRED)

include_directories(${MAYA_INCLUDE_DIR})
link_directories(${MAYA_LIBRARY_DIR})

add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} ${MAYA_LIBRARIES})

MAYA_PLUGIN(${PROJECT_NAME})

install(TARGETS ${PROJECT_NAME} ${MAYA_TARGET_TYPE} DESTINATION ${INSTALL_PATH}/${CMAKE_PROJECT_NAME}/plug-ins)