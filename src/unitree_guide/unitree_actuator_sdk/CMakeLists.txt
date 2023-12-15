cmake_minimum_required(VERSION 2.8.3)
project(motor_ctrl)

include_directories(include)

link_directories(lib)

# detect 32/64 bits
set(BITNESS 32)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(BITNESS 64)
endif()


set(EXTRA_LIBS libUnitree_motor_SDK_ARM64.so)

add_executable(check_c src/check.c)
target_link_libraries(check_c ${EXTRA_LIBS})

# add_executable(check3motor src/check3motor.c)
# target_link_libraries(check3motor ${EXTRA_LIBS})

add_executable(check_cpp src/check.cpp)
target_link_libraries(check_cpp ${EXTRA_LIBS})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
