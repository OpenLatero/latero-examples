find_package(laterographics)

set(latero_demo_SRCS
    vibrationgenerator.h
    vibrationgenerator.cpp
    main.cpp)

add_executable(latero-example-vibrate-engine ${latero_demo_SRCS})
set_target_properties(latero-example-vibrate-engine PROPERTIES CXX_STANDARD 17 CXX_STANDARD_REQUIRED ON)
target_link_libraries(latero-example-vibrate-engine laterographics::laterographics)
install_programs(/bin latero-example-vibrate-engine)
