message(STATUS "My system is ${CMAKE_SYSTEM_NAME} and my processor is ${CMAKE_HOST_SYSTEM_PROCESSOR}")

# workaround for CMP0042 warning on Mac
if(CMAKE_SYSTEM_NAME MATCHES "Darwin")
    if(NOT DEFINED CMAKE_MACOSX_RPATH)
        set(CMAKE_MACOSX_RPATH ON)
    endif()
endif()
