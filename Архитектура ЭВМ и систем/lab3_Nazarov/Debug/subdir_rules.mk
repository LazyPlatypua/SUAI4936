################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
file1.obj: ../file1.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"D:/Programm Files/ccsv5/tools/compiler/c6000_7.4.4/bin/cl6x" -mv6400 --abi=coffabi -g --include_path="D:/Programm Files/ccsv5/tools/compiler/c6000_7.4.4/include" --define=c6416 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="file1.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


