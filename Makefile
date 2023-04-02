PROJECT?=$(notdir $(CURDIR))
ARMINO_DIR1?=/home/g/00BuildTools/04BK/01SDK/armino/
ARMINO_DIR_TO_TOP?=../../../../../..
PROJECT_DIR?=$(ARMINO_DIR_TO_TOP)$(CURDIR)

$(info PROJECT: $(PROJECT))
$(info PROJECT_DIR: $(PROJECT_DIR))

all:
	mkdir -p build/
	@make -C $(ARMINO_DIR1) bk7256 PROJECT_DIR=$(PROJECT_DIR) PROJECT=app PROJECT_BUILD_DIR=$(PROJECT_DIR)/build/ 
	
cpu1:
	mkdir -p build/
	@make -C $(ARMINO_DIR1) bk7256_cp1 PROJECT_DIR=$(PROJECT_DIR) PROJECT=app PROJECT_BUILD_DIR=$(PROJECT_DIR)/build/

menuconfig:
	@make -C $(ARMINO_DIR1) menuconfig PROJECT_DIR=$(PROJECT_DIR) PROJECT=app PROJECT_BUILD_DIR=$(PROJECT_DIR)/build/

clean:
	rm -rf build