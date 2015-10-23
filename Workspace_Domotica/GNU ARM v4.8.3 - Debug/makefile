################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include CMSIS/efm32gg/subdir.mk
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
all: Workspace_Domotica.axf

# Tool invocations
Workspace_Domotica.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -T "Workspace_Domotica.ld" -Xlinker --gc-sections -Xlinker -Map="Workspace_Domotica.map" --specs=nano.specs -o Workspace_Domotica.axf "./src/Klok.o" "./src/Main.o" "./src/Relais.o" "./emlib/em_cmu.o" "./emlib/em_gpio.o" "./emlib/em_system.o" "./CMSIS/efm32gg/startup_gcc_efm32gg.o" "./CMSIS/efm32gg/system_efm32gg.o" "./BSP/bsp_bcc.o" "./BSP/bsp_stk.o" "./BSP/bsp_stk_leds.o" "./BSP/bsp_trace.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Workspace_Domotica.hex'
	arm-none-eabi-objcopy -O ihex "Workspace_Domotica.axf" "Workspace_Domotica.hex"
	@echo ' '

	@echo 'Building bin file: Workspace_Domotica.bin'
	arm-none-eabi-objcopy -O binary "Workspace_Domotica.axf" "Workspace_Domotica.bin"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Workspace_Domotica.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Workspace_Domotica.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
