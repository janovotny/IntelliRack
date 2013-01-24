CC=gcc
CFLAGS=-g
LDFLAGS=-lm
OBJS=$(patsubst %.c,%.o,$(wildcard *.c))

all: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o intellirack
	
clean:
	rm -rf $(OBJS)	
