#check if CROSS_COMPILE is defined.

ifdef CROSS_COMPILE 
	CC = $(CROSS_COMPILE)gcc
else
	CC = gcc 

endif 

CFLAGS = -Wall 

TARGET = writer

all: $(TARGET) 

$(TARGET):writer.o
	$(CC) writer.o -o $(TARGET)

writer.o: writer.c 
	$(CC) -c writer.c
	
clean: 
	rm -f $(TARGET) $(TARGET).o

