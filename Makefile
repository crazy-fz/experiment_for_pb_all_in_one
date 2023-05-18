CXX = g++
CFLAGS = -std=c++98 -fPIC -shared -O3 -I. -L. -lstdc++

src_files = a.cpp b.cpp
bin_files = $(BIN_BASE) $(BIN_A) $(BIN_B) $(EXEC_MAIN)

BIN_BASE = libbase.so
BIN_A = liba.so
BIN_B = libb.so
EXEC_MAIN = main.out

CPP_BASE = base.cpp
CPP_BASE2 = base2.cpp
CPP_A = a.cpp
CPP_B = b.cpp

OBJ_BASE = base.o
OBJ_BASE2 = base2.o
OBJ_A = a.o
OBJ_B = b.o


all: $(bin_files)

$(OBJ_BASE):$(CPP_BASE)
	$(CXX) $(CFLAGS) -c -o $@ $^
$(OBJ_BASE2):$(CPP_BASE2)
	$(CXX) $(CFLAGS) -c -o $@ $^

$(OBJ_A):$(CPP_A)
	$(CXX) $(CFLAGS) -c -o $@ $^  -lstdc++

$(OBJ_B):$(CPP_B)
	$(CXX) $(CFLAGS) -c -o $@ $^ -lstdc++

$(BIN_BASE):$(OBJ_BASE) $(OBJ_BASE2)
	$(CXX) $(CFLAGS) -o $(BIN_BASE) $(OBJ_BASE) $(OBJ_BASE2)

$(BIN_A):$(OBJ_A) $(BIN_BASE)
	$(CXX) $(CFLAGS) -o $(BIN_A) $(OBJ_A) -lbase

$(BIN_B):$(OBJ_B) $(BIN_BASE)
	$(CXX) $(CFLAGS) -o $(BIN_B) $(OBJ_B) -lbase


$(EXEC_MAIN):main.cpp
	g++ -std=c++98 -o $@ $^ -I. -L. -la -lb -ldl -lstdc++

clean:
	rm -f $(bin_files)