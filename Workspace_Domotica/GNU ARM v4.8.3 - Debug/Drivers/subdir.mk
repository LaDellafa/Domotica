################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/segmentlcd.c 

OBJS += \
./Drivers/segmentlcd.o 

C_DEPS += \
./Drivers/segmentlcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/segmentlcd.o: ../Drivers/segmentlcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32HG322F64=1' -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/Applications/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/segmentlcd.d" -MT"Drivers/segmentlcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


