# stop if CMake version is below 3.0
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

# project name and supported languages
project(calculator VERSION 1.0.0 LANGUAGES CXX Fortran)

# specify where to place binaries and libraries
include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

# contains a workaround for Mac OS X
include(cmake/arch.cmake)

include(cmake/version.cmake)
generate_version_h()

# process src/CMakeLists.txt
add_subdirectory(src)

# enable testing
enable_testing()

# process test/CMakeLists.txt
add_subdirectory(test)

include(cmake/packaging.cmake)
