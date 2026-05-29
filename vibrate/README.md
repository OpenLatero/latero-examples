# LATERO-EXAMPLE-VIBRATE

This example shows the use of the Latero library to make the pins of the Latero tactile display vibrate. The pins vibrate at 1 Hz with adjacent row having a different phase.

## MacOS

Tested on MacOS Tahoe 26.3.1.

Install the latero library.

#### Build and run the app

The app can be compiled with the following commands:

```
cmake -B build
cmake --build build
```

and ran with this command:

```
build/latero-example-vibrate
```

or in a single command:

```
cmake -B build && cmake --build build && build/latero-example-vibrate
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
