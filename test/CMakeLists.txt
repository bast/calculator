option(ENABLE_UNIT_TESTS "Enable unit tests" ON)
message(STATUS "Enable testing: ${ENABLE_UNIT_TESTS}")

if(ENABLE_UNIT_TESTS)
    include(ExternalProject)

    ExternalProject_Add(
        gtest
        PREFIX "${PROJECT_BINARY_DIR}/gtest"
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG master
        INSTALL_COMMAND true  # currently no install command
        )

    add_executable(
        unit_tests
        main.cpp
        calculator.cpp
        )

    target_link_libraries(
        unit_tests
        ${PROJECT_BINARY_DIR}/gtest/src/gtest-build/googlemock/gtest/libgtest.a
        calculator
        pthread
        )

    target_include_directories(
        unit_tests
        PRIVATE
        ${PROJECT_BINARY_DIR}/gtest/src/gtest/googletest/include
        ${PROJECT_SOURCE_DIR}/src
        )

    add_dependencies(unit_tests gtest)

    include(CTest)
    enable_testing()

    add_test(unit ${PROJECT_BINARY_DIR}/bin/unit_tests)
endif()
