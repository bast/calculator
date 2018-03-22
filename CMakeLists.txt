# stop if CMake version is below 3.0
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

# project name and supported languages
project(calculator LANGUAGES CXX Fortran)

# specify where to place binaries and libraries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

include(cmake/version.cmake)
include(cmake/arch.cmake)

# process src/CMakeLists.txt
add_subdirectory(src)

include(cmake/test.cmake)
include(cmake/packaging.cmake)
