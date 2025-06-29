cmake_minimum_required(VERSION 3.10)

project(flutter_always_on_top_linux C)

add_library(flutter_always_on_top SHARED
  native_window.c
)

target_include_directories(flutter_always_on_top PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(flutter_always_on_top gtk-3)
