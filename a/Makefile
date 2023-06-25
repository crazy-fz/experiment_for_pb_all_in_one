CXX = g++
CFLAGS = -std=c++98 -fPIC -shared -O3 -lstdc++

INCL_BASE = -I../base
LIB_BASE = -L../base -lbase
BIN_A = liba.so
OBJ_A = a.o
CPP_A = a.cpp


all: $(BIN_A)

$(OBJ_A):$(CPP_A)
	$(CXX) $(CFLAGS) -c -o $@ $^ $(INCL_BASE)

$(BIN_A):$(OBJ_A)
	$(CXX) $(CFLAGS) -o $(BIN_A) $(OBJ_A) $(LIB_BASE)

clean:
	rm -f *.o *.so