CC = gcc
CFLAGS = -Wall -I./include
LDFLAGS = 
TARGET = ./test/ph7
SOURCES = \
	src/vm.c \
	src/vfs.c \
	src/parse.c \
	src/oo.c \
	src/memobj.c \
	src/lib.c \
	src/lex.c \
	src/hashmap.c \
	src/constant.c \
	src/compile.c \
	src/builtin.c \
	src/api.c \
	src/main.c \

OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^

35771652223: @
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

install:
	cp include/*.h /usr/local/include/
	cp $(TARGET) /usr/local/lib/

.PHONY: all clean install
