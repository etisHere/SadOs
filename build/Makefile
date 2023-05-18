SRC_DIR := ../src
BOOT_DIR := ../boot
NASM := nasm
GCC := gcc
ASM_IO := $(SRC_DIR)/asm_io.s
MAIN := $(SRC_DIR)/main.c

$(BOOT_DIR)/main.bin: $(SRC_DIR)/main.o $(SRC_DIR)/asm_io.o
	$(GCC) -m32 -o $(BOOT_DIR)/main.bin $(SRC_DIR)/main.o $(SRC_DIR)/asm_io.o

$(SRC_DIR)/asm_io.o: $(ASM_IO)
	$(NASM) -f elf32 $(ASM_IO) -o $(SRC_DIR)/asm_io.o

$(SRC_DIR)/main.o: $(MAIN)
	$(GCC) -m32 -c $(MAIN) -o $(SRC_DIR)/main.o

.PHONY: clean
clean:
	rm -f $(SRC_DIR)/*.o $(BOOT_DIR)/main.bin

