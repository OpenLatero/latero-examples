include(FindPkgConfig)

pkg_check_modules (LATERO latero)
link_directories(${LATERO_LIBRARY_DIRS})
include_directories(${LATERO_INCLUDE_DIRS})

pkg_check_modules (GTKMM gtkmm-2.4)
link_directories(${GTKMM_LIBRARY_DIRS})
include_directories(${GTKMM_INCLUDE_DIRS})

set(prog_SRCS main.cpp)

add_executable(latero-example-vibrate ${prog_SRCS})
target_link_libraries(latero-example-vibrate ${LATERO_LIBRARIES} ${GTKMM_LIBRARIES})
install_programs(/bin latero-example-vibrate)
