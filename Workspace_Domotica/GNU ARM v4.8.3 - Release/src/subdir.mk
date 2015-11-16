################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Klok.c \
../src/Main.c \
../src/Relais.c \
../src/Watchdog.c 

OBJS += \
./src/Klok.o \
./src/Main.o \
./src/Relais.o \
./src/Watchdog.o 

C_DEPS += \
./src/Klok.d \
./src/Main.d \
./src/Relais.d \
./src/Watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
src/Klok.o: ../src/Klok.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/textdisplay -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/display -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O3 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/Klok.d" -MT"src/Klok.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Main.o: ../src/Main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/textdisplay -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/display -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O3 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/Main.d" -MT"src/Main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Relais.o: ../src/Relais.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/textdisplay -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/display -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O3 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/Relais.d" -MT"src/Relais.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Watchdog.o: ../src/Watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/textdisplay -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/display -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O3 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/Watchdog.d" -MT"src/Watchdog.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

