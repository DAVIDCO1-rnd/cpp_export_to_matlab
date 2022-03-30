cmake_minimum_required(VERSION 3.12)

project(mylib)

set(HEADERS
    mylib.hpp
)

set(SOURCES
    mylib.cpp
)

add_library(${PROJECT_NAME} ${HEADERS} ${SOURCES})

if (BUILD_SHARED_LIBS)
    install(TARGETS ${PROJECT_NAME} DESTINATION .)
endif()