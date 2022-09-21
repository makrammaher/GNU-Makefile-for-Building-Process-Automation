# GNU-Makefile-for-Building-Process-Automation

Using GNU Makefile and Bash Script to automate the building process of any project files in organized folders, for both AVR cross tool chain and STM32 cross toolchains.

- to use it you must install GNU-make.
- you must organize the project folders as the following.
- put all source code files in folder Called "Src".
- build the project by execute 'make' command using terminal.
- all the compiled file will be saved in folder called "Debug".
- you can clear the build by execute 'make clean' or 'make clean-all' commands using terminal.

## **For ARM-Toolchain**
- Linker Script file must be outside the "Src" Folder named by 'linker_script.ld'
- Startup code must be in folder called "Startup" outside the "Src" Folder

## **Examples Projects**
1. [For AVR-Toolchain](https://github.com/makrammaher/Mastering_Embedded_System_Diploma/tree/master/07_MCU_Interfacing/03_UART_02/02_ATMega32_UART_Driver)
2. [For ARM-Toolchain](https://github.com/makrammaher/Mastering_Embedded_System_Diploma/tree/master/07_MCU_Interfacing/03_UART_02/01_STM32_UART_Driver)