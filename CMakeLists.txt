# stop if CMake version is below 3.0
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

# project name and supported languages
project(calculator CXX Fortran)

# specify where to place binaries and libraries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# tell CMake where to find *.cmake module files
set(CMAKE_MODULE_PATH
    ${CMAKE_MODULE_PATH}
    ${PROJECT_SOURCE_DIR}/cmake
    )

include(version)
include(arch)

# process src/CMakeLists.txt
add_subdirectory(src)

include(test)
include(packaging)
