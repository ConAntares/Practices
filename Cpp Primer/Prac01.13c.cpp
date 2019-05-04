/* Practice 1.11 */

#include <iostream>

int main()
{
    int start =   0;
    int stop  =   0;
    std::cout   << "Enter the start number:" << std::endl;
    std::cin    >> start;
    std::cout   << "Enter the stop number:"  << std::endl;
    std::cin    >> stop;
    if (start <= stop)
    {
        for (int begin = start; begin <= stop; ++begin)
        {
            std::cout << begin << std::endl;
        }
    }
    else
    {
        for (int begin = start; begin >= stop; --begin)
        {
            std::cout << begin << std::endl;
        }
    }
    return 0;
}