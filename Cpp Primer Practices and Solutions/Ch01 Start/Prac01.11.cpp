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
        while (start <= stop)
        {
            std::cout << start << std::endl;
            start = start + 1;
        }
    }
    else
    {
        while (start >= stop)
        {
            std::cout << start << std::endl;
            start = start - 1;
        }
    }
    return 0;
}