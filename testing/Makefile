ASM=nasm -f elf32
GC=gcc -m32 -c 
SRC_DIR=~/SadOs/src
GCO=gcc -m32 -c -o 
COPY=cp
BOOT_DIR=~/SadOs/boot

$(SRC_DIR)/asm_io.s: $(SRC_DIR)/main.c
	$(ASM) $(SRC_DIR)/asm_io.s -o $(SRC_DIR)/asm_io.o     
	$(GC) $(SRC_DIR)/main.c
	$(GCO) $(SRC_DIR)/main.bin main.o asm_io.o
	$(COPY) $(SRC_DIR)/main.bin $(BOOT_DIR)/
