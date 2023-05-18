# experiment_for_pb_all_in_one
测试用

所有的pb文件生成的.o，汇聚成一个.so，方便运维更新。验证了在这种情况下，static变量仅初始化一次。如果是.o打包进不同.so，会在同一内存地址多次调用构造函数，会有问题。
