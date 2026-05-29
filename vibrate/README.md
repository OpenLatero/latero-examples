# LATERO-EXAMPLE-VIBRATE

This example shows the use of the Latero library to make the pins of the Latero tactile display vibrate. The pins vibrate at 1 Hz with adjacent row having a different phase.

## MacOS

Tested on MacOS Tahoe 26.3.1.

Install the latero library.

#### Install dependencies

The dependencies can be installed through [MacPorts](https://www.macports.org) with the following command:

```
sudo port install gtkmm3 +quartz
```

Build the app:
```
cmake -B build
cmake --build build
```

Run the app:
```
build/latero-example-vibrate
```

## Linux

Tested on Ubuntu 16.04 LTS.

1. Install the Latero library. (see http://github.com/OpenLatero/latero)

2. Compile the example:
```
cmake .
make
```

3. Run the example:
```
./latero-example-vibrate
```
