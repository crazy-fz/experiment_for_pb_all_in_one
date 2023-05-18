#include "a.h"
#include "base.h"
#include "base2.h"
a::a() {
    cout << "base: " << &base::base_static << '\n';
    cout << "base2: " << &base2::base_static << '\n';
}