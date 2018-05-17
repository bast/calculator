add_library(
  calculator
  SHARED
  add.f90
  subtract.f90
  calculator.h
  )

target_include_directories(
  calculator
  PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}
  )

add_executable(
  calculator.x
  main.cpp
  )

target_link_libraries(
  calculator.x
  PRIVATE
  calculator
  )

target_include_directories(
  calculator.x
  PRIVATE
  ${PROJECT_BINARY_DIR}/generated
  )

install(
  TARGETS calculator.x
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  )

install(
  TARGETS calculator
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  )
