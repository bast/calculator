option(ENABLE_UNIT_TESTS "Enable unit tests" ON)
message(STATUS "Enable testing: ${ENABLE_UNIT_TESTS}")

if(ENABLE_UNIT_TESTS)
    include(ExternalProject)

    ExternalProject_Add(
        gtest
        PREFIX
          "${PROJECT_BINARY_DIR}/gtest"
        GIT_REPOSITORY
          https://github.com/google/googletest.git
        GIT_TAG
          release-1.8.0
        CMAKE_ARGS
          "-Dgtest_disable_pthreads=ON"
        INSTALL_COMMAND
          "" # prevent gtest from installing itself system-wide
        BUILD_BYPRODUCTS
          # this is here otherwise Ninja will complain
          # that there is no rule to build libgtest.a
          ${PROJECT_BINARY_DIR}/gtest/src/gtest-build/googlemock/gtest/libgtest.a
        )

    add_executable(
        unit_tests
        test/main.cpp
        test/calculator.cpp
        )

    target_include_directories(
        unit_tests
        PRIVATE
        ${PROJECT_SOURCE_DIR}/src
        ${PROJECT_BINARY_DIR}/gtest/src/gtest/googletest/include
        )

    target_link_libraries(
        unit_tests
        PRIVATE
        calculator
        ${PROJECT_BINARY_DIR}/gtest/src/gtest-build/googlemock/gtest/libgtest.a
        )

    # make sure that gtest is built before we build unit_tests
    add_dependencies(unit_tests gtest)

    enable_testing()
    add_test(unit ${PROJECT_BINARY_DIR}/bin/unit_tests)
endif()
