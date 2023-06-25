#include "b.h"
#include "base.h"
#include "base2.h"
mylib_b::b::b() {
    std::cout << "base: " << &base::base_static << '\n';
    std::cout << "base2: " << &base2::base_static << '\n';
}