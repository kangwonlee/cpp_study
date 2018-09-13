SRC = hello
CPP = $(SRC).cpp
ASM = $(SRC).s

CC = g++

all : $(SRC) $(ASM)

hello : $(CPP)
	$(CC) -Wall $(CPP) -o $(SRC)

hello.s : $(CPP)
	$(CC) $(CPP) -Wa,-adhln=$(ASM) 

clean : 
	\rm $(SRC) $(ASM)

