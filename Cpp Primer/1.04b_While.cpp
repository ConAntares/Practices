/* While */

# include <iostream>

int main()
{
    int sum = 0;
    int sta = 8;
    int val = sta;
    int end = 10;
    while (val <= end)
    {
        sum = sum + val;                // sum += val;
        val = val + 1;                  // ++val;
    }
    std::cout << "Sum of  " << sta << "  to " << end << " inclusive is " << sum << "." << std::endl;
    return 0;
}