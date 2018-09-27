#include <iostream>
#include <iomanip>

using namespace std;

void accumulate_array_ptr(double *, const double);
void accumulate_array_ref(double &, const double);

int main(const int argn, char *argv[]){
    double update_this_with_pointer = 0.0;
    double update_this_with_reference = 0.0;
    
    for(int i=0; 10 > i; ++i){
        accumulate_array_ptr(& update_this_with_pointer, (double) i);
        accumulate_array_ref(update_this_with_reference, (double) i);
    }
    
    cout << "Pointer result   = " << update_this_with_pointer << '\n';
    cout << "Reference result = " << update_this_with_reference << '\n';
       
    return 0;
}

void accumulate_array_ptr(double * s, const double a){
    *s += a;
}

void accumulate_array_ref(double & t, const double a){
    t += a;
}

