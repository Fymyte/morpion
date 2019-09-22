CC=gcc
CFLAGS=-Wall -Wextra -std=c99
SRC=morpion.c
OBJ=$(SRC:.c=.o)
EXEC=morpion

all:$(OBJ)
	$(CC) $(CFLAGS) -o $(EXEC) $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(OBJ) $(EXEC)
