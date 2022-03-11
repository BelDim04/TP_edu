
cmake_minimum_required(VERSION 3.20)
project(LibLibrary)

set(SOURCE_LIB lib.cpp)
add_library(Lib  SHARED ${SOURCE_LIB})
