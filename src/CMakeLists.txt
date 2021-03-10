set(SOURCE_FILES
    "nodesLib/addFloat.cpp"
    "pluginMain.cpp")

file(GLOB_RECURSE SRC_FILE *.h *.cpp)

MESSAGE(STATUS "SourceFile" ${SRC_FILE})

find_package(Maya REQUIRED)

include_directories(${MAYA_INCLUDE_DIR})
link_directories(${MAYA_LIBRARY_DIR})

add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} ${MAYA_LIBRARIES})

MAYA_PLUGIN(${PROJECT_NAME})

install(TARGETS ${PROJECT_NAME} ${MAYA_TARGET_TYPE} DESTINATION plugin-ins)