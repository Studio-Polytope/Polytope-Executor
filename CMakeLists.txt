CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

PROJECT(
    Polytope-Execute
    VERSION 0.1
    DESCRIPTION "Source Execution System for Polytope"
    LANGUAGES CXX C
)

SET(TARGET_EXECUTABLE_NAME execute)
SET(CXX_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)

ADD_EXECUTABLE(${TARGET_EXECUTABLE_NAME} ${CXX_SOURCE_DIR}/main.cpp)
TARGET_INCLUDE_DIRECTORIES(${TARGET_EXECUTABLE_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
TARGET_COMPILE_OPTIONS(${TARGET_EXECUTABLE_NAME} PUBLIC -O2 --std=c++17 -Wall -Wextra -Werror)
