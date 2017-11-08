add_library(
    calculator
    SHARED
    add.f90
    subtract.f90
    calculator.h
    )

add_executable(
    calculator.x
    main.cpp
    )

target_link_libraries(
    calculator.x
    calculator
    )

target_include_directories(
    calculator.x
    PRIVATE
    ${PROJECT_BINARY_DIR}/generated
    )

install(
    TARGETS calculator.x
    RUNTIME DESTINATION bin
    )

install(
    TARGETS calculator
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    )
