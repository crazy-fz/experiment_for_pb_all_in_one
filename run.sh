rm ./*.so
rm ./*.o
rm ./*.a
rm ./*.out
export LD_LIBRARY_PATH=`pwd`:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=`pwd`/base:$LD_LIBRARY_PATH
make all
export LIBRARY_PATH=`pwd`:$LIBRARY_PATH
./main.out
