cmake_minimum_required(VERSION 3.12)

project(myproj)

set(BUILD_SHARED_LIBS TRUE)

if (BUILD_SHARED_LIBS)
    add_definitions(-D MYPROJ_DLL)
endif()

add_subdirectory(mylib)

set(HEADERS
    mylib/mylib.hpp
)

set(SOURCES
    myproj.cpp
)

add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES})
target_link_libraries(${PROJECT_NAME} mylib)

install(TARGETS ${PROJECT_NAME} DESTINATION .)