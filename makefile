SRC = cpp_matrix
CPP = $(SRC).cpp
ASM = $(SRC).s

CC = g++

all : $(SRC) $(ASM)

$(SRC) : $(CPP)
	$(CC) -Wall -g $(CPP) -o $(SRC)

$(ASM) : $(CPP)
	$(CC) -g $(CPP) -Wa,-adhln=$(ASM) 

clean : 
	\rm $(SRC) $(ASM)

