# we will use the network to fetch Google Test sources
# make it possible to disable unit tests when not on network
option(ENABLE_UNIT_TESTS "Enable unit tests" ON)
message(STATUS "Enable testing: ${ENABLE_UNIT_TESTS}")

include(googletest.cmake)

if(ENABLE_UNIT_TESTS)
  fetch_googletest(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_BINARY_DIR}/googletest
    )

  add_executable(unit_tests "")

  target_sources(
    unit_tests
    PRIVATE
      calculator.cpp
      main.cpp
    )

  target_link_libraries(
    unit_tests
    PRIVATE
      calculator
      gtest_main
    )

  add_test(unit ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_BINDIR}/unit_tests)
endif()
