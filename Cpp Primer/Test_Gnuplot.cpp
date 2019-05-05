/* Test Gnuplot */

// Gnuplot Download: http://gnuplot.sourceforge.net/download.html

#include <iostream>
using namespace std;

int main()
{
    const char *gnuplotPath = "gnuplot";
    FILE *gpl = _popen(gnuplotPath, "w");
    if (gpl == NULL)
    {
        std::cout  << "Cannotopen gnuplot!\n" << std::endl;
        return 0;
    }

    fprintf(gpl, "plot sin(x)\n");
    fprintf(gpl, "pause -1\n");
    fclose(gpl);
}