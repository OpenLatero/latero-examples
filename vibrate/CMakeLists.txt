cmake_minimum_required(VERSION 3.10...3.31)
Project(latero-example-vibrate)

include(FindPkgConfig)
find_package(latero REQUIRED)

set(prog_SRCS main.cpp)

add_executable(latero-example-vibrate ${prog_SRCS})
target_link_libraries(latero-example-vibrate latero::latero)
install_programs(/bin latero-example-vibrate)
