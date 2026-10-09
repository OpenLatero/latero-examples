cmake_minimum_required(VERSION 3.10...3.31)
Project(latero-example-vibrate-loop)

include(FindPkgConfig)
find_package(latero REQUIRED)

set(prog_SRCS main.cpp)

add_executable(latero-example-vibrate-loop ${prog_SRCS})
target_link_libraries(latero-example-vibrate-loop latero::latero)
install_programs(/bin latero-example-vibrate-loop)
