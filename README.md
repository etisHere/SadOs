# SadOs
Very sad os!

## How to run
chmod +x build-run.sh
./build-run
### OR
gcc -m32 -c main.c
nasm -f elf32 asm_io.s -o asm_io.o
gcc -m32 -o main.bin main.o asm_io.o

qemu-system-i386 -kernel main.bin

## TODO(not in order):
- [] Work on the kernel so the OS actually can start booting
- [x] Fix make file as its from the old config
- [x] Move from asmebly to C
- [] Working tty
- [] Working keyboard/mouse
- [x] Not die
- [] Welcome screen
- [] Audio
- [] Desktop
- [] Desktop Apps(All to be built from scratch)
- [] Move from C to own lang

and etc, this is just to get a idea where the os is at. 

## Layout
```- boot/
    - main.bin
  - kernel/
    - core/
      - scheduler.c
      - memory.c
      - ...
    - drivers/
      - display.c
      - keyboard.c
      - ...
  - devices/
    - network/
      - ethernet.c
      - wifi.c
      - ...
    - storage/
      - disk.c
      - filesystem.c
      - ...
    - input/
      - mouse.c
      - gamepad.c
      - ...
  - libs/
    - libc/
      - string.c
      - math.c
      - ...
    - libgfx/
      - graphics.c
      - window.c
      - ...
  - utils/
    - logging.c
    - config.c
    - ...
  - include/
    - kernel.h
    - drivers.h
    - devices.h
    - libs.h
    - utils.h
  - build/
    - Makefile
    - linker.ld
    - ...
  - src/
    - asm_io.s
    - main.c
~```

## BUT ET WHAT ARE THESE FOLDERS FOR?

boot/ contains the bootloader and kernel binary files.

kernel/ holds the core components of the kernel, such as scheduler, memory management, and other subsystems.

drivers/ contains device driver implementations for various hardware components.

devices/ includes higher-level abstractions for different device types like network, storage, and input.

libs/ contains libraries and utility code that can be shared across different parts of the OS.

utils/ includes utility functions and helper modules for various tasks.

include/ holds header files defining interfaces and declarations for different OS components.

build/ contains build-related files such as Makefile, linker script, and other build configurations.


## Why no run?

Cause this is as early as it gets. The error you see right now made my day when I seen it.

No, I'm not going crazy.

## Help and have fun

This is Os is being built for myself and others to learn from.. Maybe it'll be something someday.
