CC=gcc
CFLAGS=-lpthread -I include/ -c
SOURCES=hashTable.c connections.c message.c main.c
OBJECTS=$(addprefix obj/, $(SOURCES:.c=.o))
EXECUTABLE=Chat

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

obj/%.o: src/%.c
	$(CC) $(CFLAGS) $< -o $@

run: $(EXECUTABLE)
	./$(EXECUTABLE)

clean:
	rm -f obj/*.o ./$(EXECUTABLE)
