# DIR_SRC = ./Catalog/source ./Test 
# DIR_SRC = ./test 
DIR_SRC = .
DIR_INC = ./Catalog/headers
DIR_OBJ = ./obj
DIR_BIN = ./bin

SRC = $(shell find . -name "*.cc")
OBJ = $(SRC:%.cc=%.o)

TARGET = test
TGT = ${DIR_BIN}/${TARGET}

CC = g++
CFLAGS = -g -Wall -I${DIR_INC}

${TGT} : ${OBJ}
	$(CC) $(CFLAGS) -o $@ $^

${OBJ} : %.o : %.cc
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY : clean

clean: 
	rm -fr $(TGT)