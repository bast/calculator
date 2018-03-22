# stop if CMake version is below 3.0
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

# project name and supported languages
project(calculator LANGUAGES CXX Fortran)

# specify where to place binaries and libraries
include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

include(cmake/version.cmake)
include(cmake/arch.cmake)

# process src/CMakeLists.txt
add_subdirectory(src)

# enable testing
enable_testing()

# process test/CMakeLists.txt
add_subdirectory(test)

include(cmake/packaging.cmake)
