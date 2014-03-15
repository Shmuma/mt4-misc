CC=i586-mingw32msvc-gcc

CFLAGS=-O2
LDFLAGS=-shared -Wl,--add-stdcall-alias
LDFLAGS_LIBS=-lshlwapi -lshell32

all: test.dll

test.dll: test.o
	$(CC) $(LDFLAGS) -o test.dll test.o $(LDFLAGS_LIBS)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
