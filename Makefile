DIR_SRC = .
DIR_INC = $(sort $(dir $(wildcard ./**/headers/*/)))
INC_PARAM = $(foreach dir, $(DIR_INC), -I$(dir))
# DIR_INC = ./Catalog/headers MyDB_BufferMgr/headers
DIR_BIN = ./bin

SRC = $(shell find . -name "*.cc")
OBJ = $(SRC:%.cc=%.o)

TARGET = test
TGT = ${DIR_BIN}/${TARGET}

CC = g++
CFLAGS = -g -std=c++0x -Wall ${INC_PARAM}

${TGT} : ${OBJ}
	@echo ${OBJ}
	$(CC) $(CFLAGS) -o $@ $^

${OBJ} : %.o : %.cc
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY : clean

clean: 
	rm -fr $(TGT)
	find -type f -name '*.o' -delete
