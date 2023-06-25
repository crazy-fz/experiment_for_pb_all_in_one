CXX = g++
CFLAGS = -std=c++98 -fPIC -shared -O3 -lstdc++

INCL_BASE = -I../base
LIB_BASE = -L../base -lbase
BIN_B = libb.so
OBJ_B = b.o
CPP_B = b.cpp

all: $(BIN_B)

$(OBJ_B):$(CPP_B)
	$(CXX) $(CFLAGS) -c -o $@ $^ $(INCL_BASE)

$(BIN_B):$(OBJ_B)
	$(CXX) $(CFLAGS) -o $(BIN_B) $(OBJ_B) $(LIB_BASE)

clean:
	rm -f *.o *.so