CC=g++
CFLAGS=-std=c++17
EXE=bigwhile

all: clean main.o
	$(CC) $(CFLAGS) -o $(EXE) main.o
main.o:
	$(CC) $(CFLAGS) -c main.cpp
clean:
	rm -rf $(EXE) *.o *.log
