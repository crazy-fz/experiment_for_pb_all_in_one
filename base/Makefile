CXX = g++
CFLAGS = -std=c++98 -fPIC -shared -O3 -lstdc++

BIN_BASE = libbase.so
OBJ_BASE = base.o
OBJ_BASE2 = base2.o
CPP_BASE = base.cpp
CPP_BASE2 = base2.cpp

all: $(BIN_BASE)

$(BIN_BASE):$(OBJ_BASE) $(OBJ_BASE2)
	$(CXX) $(CFLAGS) -o $(BIN_BASE) $(OBJ_BASE) $(OBJ_BASE2)

$(OBJ_BASE):$(CPP_BASE)
	$(CXX) $(CFLAGS) -c -o $@ $^

$(OBJ_BASE2):$(CPP_BASE2)
	$(CXX) $(CFLAGS) -c -o $@ $^

clean:
	rm -f *.o *.so