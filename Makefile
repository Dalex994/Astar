
CFLAGS=-Wall -Wextra -pedantic -std=c99
TARGET=astar

astar: astar.c
	$(CC) $(CFLAGS) astar.c -o $(TARGET)
#	./$(TARGET)


