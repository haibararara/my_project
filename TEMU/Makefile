include mips_sc/src/Makefile.testcase

.PHONY: run clean

ifndef INCLUDE_DIR
INCLUDE_DIR := ./temu/include
endif
ifndef SRC_DIR
SRC_DIR := ./temu/src
endif
ifndef BUILD_DIR
BUILD_DIR := build/
endif
DEBUG := false

# Compilation flags
CC := gcc
CFLAGS := -I$(INCLUDE_DIR) -I$(INCLUDE_DIR)/cpu -I$(INCLUDE_DIR)/memory -I$(INCLUDE_DIR)/monitor -Wall -Werror
LDFLAGS := -lreadline

# 添加GTK支持
GTK_CFLAGS := $(shell pkg-config --cflags gtk+-3.0 2>/dev/null || echo "")
GTK_LDFLAGS := $(shell pkg-config --libs gtk+-3.0 2>/dev/null || echo "")

# 如果检测到GTK，添加GUI支持
ifneq ($(GTK_CFLAGS),)
    CFLAGS += $(GTK_CFLAGS) -DUSE_GUI
    LDFLAGS += $(GTK_LDFLAGS)
    GUI_AVAILABLE := yes
else
    GUI_AVAILABLE := no
endif

# Files to be compiled
SRCS := $(wildcard $(SRC_DIR)/*.c) \
        $(wildcard $(SRC_DIR)/memory/*.c) \
        $(wildcard $(SRC_DIR)/cpu/*.c) \
        $(wildcard $(SRC_DIR)/monitor/*.c)

TEMU_TARGET := temu

ifeq ($(DEBUG), true)
CFLAGS += -g
endif

export	INCLUDE_DIR
export	SRC_DIR
export	BUILD_DIR

# ********************
# Rules of Compilation
# ********************

$(BUILD_DIR)$(TEMU_TARGET): 
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling TEMU..."
	@if [ "$(GUI_AVAILABLE)" = "yes" ]; then \
		echo "GUI support enabled (GTK found)"; \
	else \
		echo "GUI support disabled (GTK not found)"; \
	fi
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LDFLAGS)

run: $(BUILD_DIR)$(TEMU_TARGET)
	@if [ -z "$(USER_PROGRAM)" ]; then \
		echo "Usage: make run USER_PROGRAM=<program_name>"; \
		echo "Example: make run USER_PROGRAM=logic"; \
		exit 1; \
	fi
	@if [ "$(GUI_AVAILABLE)" = "yes" ]; then \
		echo "Starting with GUI (use -gui flag)..."; \
		./$(BUILD_DIR)$(TEMU_TARGET) $(USER_PROGRAM) -gui; \
	else \
		echo "Starting console mode (GUI not available)..."; \
		./$(BUILD_DIR)$(TEMU_TARGET) $(USER_PROGRAM); \
	fi

run-console: $(BUILD_DIR)$(TEMU_TARGET)
	@if [ -z "$(USER_PROGRAM)" ]; then \
		echo "Usage: make run-console USER_PROGRAM=<program_name>"; \
		echo "Example: make run-console USER_PROGRAM=logic"; \
		exit 1; \
	fi
	./$(BUILD_DIR)$(TEMU_TARGET) $(USER_PROGRAM)

run-gui: $(BUILD_DIR)$(TEMU_TARGET)
	@if [ -z "$(USER_PROGRAM)" ]; then \
		echo "Usage: make run-gui USER_PROGRAM=<program_name>"; \
		echo "Note: GTK+ is required for GUI mode"; \
		echo "Install: sudo apt-get install libgtk-3-dev"; \
		exit 1; \
	fi
	@if [ "$(GUI_AVAILABLE)" != "yes" ]; then \
		echo "ERROR: GTK+ not found!"; \
		echo "Please install: sudo apt-get install libgtk-3-dev"; \
		exit 1; \
	fi
	./$(BUILD_DIR)$(TEMU_TARGET) $(USER_PROGRAM) -gui

check-gtk:
	@echo "Checking for GTK+..."
	@pkg-config --cflags --libs gtk+-3.0 2>/dev/null && echo "GTK+ found" || echo "GTK+ not found"

install-gtk:
	@echo "Installing GTK+ development libraries..."
	sudo apt-get update
	sudo apt-get install -y libgtk-3-dev

clean-temu:
	rm -f -r $(BUILD_DIR)

clean:
	rm -f -r $(BUILD_DIR)
	rm -f -r ./mips_sc/build
	rm -f log.txt
	rm -f *.bin
	rm -f golden_trace.txt
