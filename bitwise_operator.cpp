#include <bitset>     // to present in binary format
#include <cstdint>    // int32_t
#include <iomanip>    // setw()
#include <iostream>   // cout


int32_t main(const int32_t argn, const char * argv[]){

    // number of examples
    const int32_t n = 10;

    // table header
    std::cout << "| `r` | `g` | `b` | `hex` |" << '\n';
    std::cout << "|:---:|:---:|:---:|:-----:|" << '\n';

    uint32_t i = 0;
    // example loop
    for(i = 0; n > i; ++i){
        // variables for r g b colors and index
        uint32_t r = rand() % (1 << 5);
        uint32_t g = rand() % (1 << 6);
        uint32_t b = rand() % (1 << 5);
        uint32_t hex = 0;

        // set red value from bit 0 ~ 4
        hex |= (r & 0x1F);
        
        // set green value from bit 5 ~ 10
        hex |= ((g & 0x3F) << 5);
        
        // set blue value from bit 11 ~ 15
        hex |= ((b & 0x1F) << 11);
        
        // How hex is supposed to have 16bit color value

        // bit patterns of color values
        // https://stackoverflow.com/questions/7349689
        std::bitset<5> b_r(r);
        std::bitset<6> b_g(g);
        std::bitset<6> b_b(b);

        // bit pattern of the 16bit integer
        std::bitset<16> b_hex(hex);

        // print this example as a row
        std::cout << "| " << std::hex << std::setw(6) << b_r
                    << " | " << std::setw(6) << b_g
                    << " | " << std::setw(6) << b_b
                    << " | " << std::setw(16) << b_hex
                    << " |\n";
    }

}
