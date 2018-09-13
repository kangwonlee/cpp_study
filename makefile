SRC = hello
CPP = $(SRC).cpp
ASM = $(SRC).s

CC = g++

all : $(SRC) $(ASM)

hello : $(CPP)
	$(CC) -Wall -g $(CPP) -o $(SRC)

hello.s : $(CPP)
	$(CC) -g $(CPP) -Wa,-adhln=$(ASM) 

clean : 
	\rm $(SRC) $(ASM)

