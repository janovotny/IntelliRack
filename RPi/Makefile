CC=gcc
CFLAGS=-g
LDFLAGS=-lm
OBJS=$(patsubst %.c,%.o,$(wildcard *.c))

all: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o intellirack

%.o:%.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -c -o $@ 

clean:
	rm -rf $(OBJS)
