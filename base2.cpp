#include "base2.h"
base2::base2() { cout << "base2 construct\n"; }
base2 ::~base2() { cout << "base2 destruct\n"; }

base2 base2::base_static = base2();