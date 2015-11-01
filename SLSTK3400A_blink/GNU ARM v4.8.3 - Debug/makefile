################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include CMSIS/efm32hg/subdir.mk
-include BSP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: SLSTK3400A_blink.axf

# Tool invocations
SLSTK3400A_blink.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "SLSTK3400A_blink.ld" -Xlinker --gc-sections -Xlinker -Map="SLSTK3400A_blink.map" --specs=nano.specs -o SLSTK3400A_blink.axf "./src/blink.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./CMSIS/efm32hg/startup_gcc_efm32hg.o" "./CMSIS/efm32hg/system_efm32hg.o" "./BSP/bsp_stk_leds.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: SLSTK3400A_blink.hex'
	arm-none-eabi-objcopy -O ihex "SLSTK3400A_blink.axf" "SLSTK3400A_blink.hex"
	@echo ' '

	@echo 'Building bin file: SLSTK3400A_blink.bin'
	arm-none-eabi-objcopy -O binary "SLSTK3400A_blink.axf" "SLSTK3400A_blink.bin"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "SLSTK3400A_blink.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) SLSTK3400A_blink.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
