CC      := gcc

CFLAGS  := -Wall -Wextra -pedantic # -std=c99

SRCDIR  := src/

SRC     := $(wildcard $(SRCDIR)*.c)
OBJ     := $(SRC:$(SRCDIR)%.c=$(SRCDIR)%.o)

BIN     := astar

build: $(OBJ)
	$(CC) $(SRC) -o $(BIN) $(CFLAGS)

# $(SRCDIR)%.o: $(SRCDIR)%.c
# 	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(BIN)

re: fclean all

all: build

.PHONY: all clean fclean re
