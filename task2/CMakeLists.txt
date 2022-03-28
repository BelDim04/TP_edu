cmake_minimum_required(VERSION 3.20)

project(Main)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib)

add_custom_command(
  OUTPUT ${PROJECT_SOURCE_DIR}/A/index.h
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/A
  COMMAND python preparing.py
)

set(MAIN_SOURCE ${PROJECT_SOURCE_DIR}/C/main.cpp)
set(TEST_SOURCE ${PROJECT_SOURCE_DIR}/C/main_test.cpp ${PROJECT_SOURCE_DIR}/C/test.cpp)

add_custom_target( RunGenerator DEPENDS ${PROJECT_SOURCE_DIR}/A/index.h )

add_executable(C  ${MAIN_SOURCE})
add_dependencies( C RunGenerator )

target_include_directories(C PRIVATE ${PROJECT_SOURCE_DIR})

add_subdirectory(B)
target_link_libraries(C Lib)


include(GoogleTest)
find_package(GTest)

add_executable(CTest ${TEST_SOURCE})
add_dependencies(CTest RunGenerator)

target_include_directories(CTest PRIVATE ${PROJECT_SOURCE_DIR})

target_link_libraries(CTest Lib GTest::gtest GTest::gtest_main)
