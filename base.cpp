#include "base.h"
base::base() { cout << "base construct\n"; }
base ::~base() { cout << "base destruct\n"; }

base base::base_static = base();