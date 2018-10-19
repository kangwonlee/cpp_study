#include <cstdint>
#include <iomanip>
#include <iostream>


// Josh Kunz, Bit-field Packing in GCC and Clang, https://jkz.wtf/bit-field-packing-in-gcc-and-clang
struct high_color_tag{
    uint16_t red:5;
    uint16_t green:6;
    uint16_t blue:5;
};


union high_color_union_tag{
    struct high_color_tag rgb_struct;
    uint16_t hex;
};


int32_t main(const int32_t argn, const char * argv[]){
    union high_color_union_tag rgb_union;

    int32_t r = 0, g = 0, b = 0;
    for (r = 0; 2*2*2*2*2> r; r+=3){
        for (g = 0; 2*2*2*2*2*2> g; g+=3){
            for (b = 0; 2*2*2*2*2> b; b+=3){
                rgb_union.rgb_struct.red = r;
                rgb_union.rgb_struct.green = g;
                rgb_union.rgb_struct.blue = b;

                std::cout << "| " << std::hex << std::setw(2) << r
                          << " | " << std::setw(2) << g
                          << " | " << std::setw(2) << b
                          << " | " << std::setw(4) << rgb_union.hex
                          << " |\n";
            }
        }
    }

    std::cout << "sizeof(rgb_union.rgb_struct)" << sizeof(rgb_union.rgb_struct) << '\n';

}
