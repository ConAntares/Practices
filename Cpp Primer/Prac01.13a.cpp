/* Practice 1.13 */

#include <iostream>

int main()
{
    int start =   0;
    int stop  =   0;
    int sum   =   0;
    std::cout   << "Enter the start number:" << std::endl;
    std::cin    >> start;
    std::cout   << "Enter the stop number:"  << std::endl;
    std::cin    >> stop;
    for (int begin = start; begin <= stop; ++begin)
    {
        sum   = sum + begin;
    }
    std::cout << "The sum from " << start << " to " << stop << " is " << sum << "." << std::endl;
    return 0;
}