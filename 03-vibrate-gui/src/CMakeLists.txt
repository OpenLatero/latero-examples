find_package(laterographics)

set(latero_demo_SRCS
    mainwindow.h
    mainwindow.cpp
    vibrationgenerator.h
    vibrationgenerator.cpp
    vibrationgeneratorwidget.h
    vibrationgeneratorwidget.cpp
    main.cpp)

add_executable(latero-example-vibrate-gui ${latero_demo_SRCS})
set_target_properties(latero-example-vibrate-gui PROPERTIES CXX_STANDARD 17 CXX_STANDARD_REQUIRED ON)
target_link_libraries(latero-example-vibrate-gui laterographics::laterographics)
install_programs(/bin latero-example-vibrate-gui)
