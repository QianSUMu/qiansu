#include <iostream>
#include "Csort.h"
#include <ctime>

int main() {
    Csort csort;
    int n=10000;
    int a[n];
    clock_t start,end;
    csort.AutoInput(a,n);
    csort.TestShell(a,n);
    csort.DeterministicSequence(a,n);
    





    return 0;
}
