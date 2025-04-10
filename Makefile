
CFLAGS=-Wall -Wextra -pedantic -std=c99
TARGET=astar

compile: astar.c
	$(CC) $(CFLAGS) astar.c -o ./bin/$(TARGET)


run:
	./bin/$(TARGET)


