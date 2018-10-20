#include <bitset>
#include <cstdint>
#include <cstdlib>
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
    const int32_t n = 10;

    int32_t r = 0, g = 0, b = 0, i = 0;

    for(i = 0; n > i; ++i){
        r = rand() % (1 << 5);
        g = rand() % (1 << 6);
        b = rand() % (1 << 5);

        rgb_union.rgb_struct.red = r;
        rgb_union.rgb_struct.green = g;
        rgb_union.rgb_struct.blue = b;

        // https://stackoverflow.com/questions/7349689
        std::bitset<5> b_r(r);
        std::bitset<6> b_g(g);
        std::bitset<6> b_b(b);
        std::bitset<16> b_hex(rgb_union.hex);

        std::cout << "| " << std::hex << std::setw(6) << b_r
                    << " | " << std::setw(6) << b_g
                    << " | " << std::setw(6) << b_b
                    << " | " << std::setw(16) << b_hex
                    << " |\n";
    }

    std::cout << "sizeof(rgb_union.rgb_struct)" << sizeof(rgb_union.rgb_struct) << '\n';

}
