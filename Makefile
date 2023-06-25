CXX = g++
CFLAGS = -std=c++98 -fPIC -shared -O3 -I. -L. -lstdc++

SUB_DIRS = a b base

BIN_BASE = base/libbase.so
BIN_A = a/liba.so
BIN_B = b/libb.so
EXEC_MAIN = main.out

.PHONY: $(SUB_DIRS) submake

all: $(EXEC_MAIN)

$(SUB_DIRS):
	make -C $@ $(MAKECMDGOALS)

$(EXEC_MAIN):main.cpp submake
	g++ -std=c++98 -o $@ main.cpp -I. -L. -La -la -Lb -lb -ldl -lstdc++ -Ia -Ib

submake::
	make -C base
	make -C a
	make -C b

clean: $(SUB_DIRS)
	rm -f main.out main.o