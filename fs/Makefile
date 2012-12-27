CC=gcc
LD=gcc
TARGET="ifs.bin"
REQ=ifs.o ifs_search.o

CFLAGS=-D_FILE_OFFSET_BITS=64
LDFLAGS=$(CFLAGS) -I/usr/include/fuse -pthread -lfuse -lrt -ldl

all: $(REQ)
	$(CC) $(CFLAGS) $(LDFLAGS) $(REQ) -o  $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

mount: distclean all
	(umount mnt && ./ifs.bin -d ../imdb/NonConfirmedEntry mnt/)||./ifs.bin -d ../imdb/NonConfirmedEntry mnt/

clean:
	rm -f *.o

distclean: clean
	rm -f $(TARGET)

test:
	$(CC) ifs_search.c searchtest.c -o searchtest
	
