################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/display.c \
../Drivers/displayls013b7dh03.c \
../Drivers/displaypalemlib.c \
../Drivers/retargetio.c \
../Drivers/retargettextdisplay.c \
../Drivers/textdisplay.c \
../Drivers/udelay.c 

OBJS += \
./Drivers/display.o \
./Drivers/displayls013b7dh03.o \
./Drivers/displaypalemlib.o \
./Drivers/retargetio.o \
./Drivers/retargettextdisplay.o \
./Drivers/textdisplay.o \
./Drivers/udelay.o 

C_DEPS += \
./Drivers/display.d \
./Drivers/displayls013b7dh03.d \
./Drivers/displaypalemlib.d \
./Drivers/retargetio.d \
./Drivers/retargettextdisplay.d \
./Drivers/textdisplay.d \
./Drivers/udelay.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/display.o: ../Drivers/display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/display.d" -MT"Drivers/display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displayls013b7dh03.o: ../Drivers/displayls013b7dh03.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/displayls013b7dh03.d" -MT"Drivers/displayls013b7dh03.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displaypalemlib.o: ../Drivers/displaypalemlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/displaypalemlib.d" -MT"Drivers/displaypalemlib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/retargetio.o: ../Drivers/retargetio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/retargetio.d" -MT"Drivers/retargetio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/retargettextdisplay.o: ../Drivers/retargettextdisplay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/retargettextdisplay.d" -MT"Drivers/retargettextdisplay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/textdisplay.o: ../Drivers/textdisplay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/textdisplay.d" -MT"Drivers/textdisplay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/udelay.o: ../Drivers/udelay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119 -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/clock -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/udelay.d" -MT"Drivers/udelay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


