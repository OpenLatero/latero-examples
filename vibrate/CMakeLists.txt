cmake_minimum_required(VERSION 2.8)
Project(latero-example-vibrate)

include(FindPkgConfig)

pkg_check_modules (LATERO latero)
link_directories(${LATERO_LIBRARY_DIRS})
include_directories(${LATERO_INCLUDE_DIRS})

set(prog_SRCS main.cpp)

add_executable(latero-example-vibrate ${prog_SRCS})
target_link_libraries(latero-example-vibrate ${LATERO_LIBRARIES} ${GTKMM_LIBRARIES})
install_programs(/bin latero-example-vibrate)
