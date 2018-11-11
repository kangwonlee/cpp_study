#include <bitset>     // to present binary numbers
#include <cstdint>    // uint16_t
#include <iomanip>    // setw()
#include <iostream>   // cout

// Josh Kunz, Bit-field Packing in GCC and Clang, 
//     https://jkz.wtf/bit-field-packing-in-gcc-and-clang
// Bit field struct
struct high_color_tag{
    uint16_t red:5;
    uint16_t green:6;
    uint16_t blue:5;
};

// Let the struct share memory with an unsigned 16bit integer
union high_color_union_tag{
    struct high_color_tag rgb_struct;
    uint16_t hex;
};


int32_t main(const int32_t argn, const char * argv[]){
    // realize the union
    union high_color_union_tag rgb_union;
    // number of examples
    const int32_t n = 10;

    // variables for r g b colors and index
    uint32_t r = 0, g = 0, b = 0, i = 0;
    
    // table header
    std::cout << "| `r` | `g` | `b` | `hex` |" << '\n';
    std::cout << "|:---:|:---:|:---:|:-----:|" << '\n';

    // example loop
    for(i = 0; n > i; ++i){
        // generate color values
        // 1 << 5 == ?
        r = rand() % (1 << 5);
        g = rand() % (1 << 6);
        b = rand() % (1 << 5);

        // set values to the struct fields
        rgb_union.rgb_struct.red = r;
        rgb_union.rgb_struct.green = g;
        rgb_union.rgb_struct.blue = b;

        // bit patterns of color values
        // https://stackoverflow.com/questions/7349689
        std::bitset<5> b_r(r);
        std::bitset<6> b_g(g);
        std::bitset<6> b_b(b);

        // bit pattern of the 16bit integer
        std::bitset<16> b_hex(rgb_union.hex);

        // print this example as a row
        std::cout << "| " << std::hex << std::setw(6) << b_r
                    << " | " << std::setw(6) << b_g
                    << " | " << std::setw(6) << b_b
                    << " | " << std::setw(16) << b_hex
                    << " |\n";
    }

    // std::cout << "sizeof(rgb_union.rgb_struct)" << sizeof(rgb_union.rgb_struct) << '\n';

}
