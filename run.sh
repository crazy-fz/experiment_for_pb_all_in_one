rm ./*.so
rm ./*.o
rm ./*.a
rm ./*.out
export LIBRARY_PATH=`pwd`:$LIBRARY_PATH
make all
export LD_LIBRARY_PATH=`pwd`:$LD_LIBRARY_PATH
./main.out