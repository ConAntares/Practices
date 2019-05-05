/* For */

#include <iostream>

int main()
{
    int sum = 0;
    int sta = 8;
    int val = sta;
    int end = 10;
    for (val = sta; val <= end; ++val)
    {
        sum = sum + val;                // sum += val;
    }
    std::cout << "Sum of  " << sta << "  to " << end << " inclusive is " << sum << "." << std::endl;
    return 0;
}
