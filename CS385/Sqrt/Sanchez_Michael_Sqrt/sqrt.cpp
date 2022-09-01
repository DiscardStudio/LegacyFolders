//Michael Sanchez
//I pledge my honor that I have abided by the Stevens Honor System.

#include <iostream>
#include <iomanip>
#include <limits>
#include <cmath>
#include <sstream>

using namespace std;

double sqrt(double num, double epsilon)
{
    if(num<0)
    {
        cerr << "Error: Value argument must be a positive double." << endl;
        return numeric_limits<double>::quiet_NaN();
    }
    else if(num==1||num==0)
        return num;
    double lguess=num,nguess=0;
    while(1)
    {
        nguess=(lguess+(num/lguess))/2;
        if(abs(lguess-nguess)<=epsilon)
            break;
        lguess=nguess;
    }
    return nguess;
}

int main(int argc, char *argv[])
{
    double num,epsilon=0.0000001;
    istringstream iss;

    if(argc<2||argc>3)
    {
        cerr << "Usage: " << argv[0] << "./sqrt <value> [epsilon]" << endl;
        return 1;
    }

    iss.str(argv[1]);
    if(!(iss>>num))
    {
        cerr << "Error: Value argument must be a positive double." << endl;
        return 1;
    }

    iss.clear();
    if(argc>2)
    {
        iss.str(argv[2]);
        if(!(iss>>epsilon)||epsilon<0)
        {
            cerr << "Error: Epsilon argument must be a positive double." << endl;
            return 1;
        }
    }

    cout << "Input:" << num << endl << "Epsilon: " << epsilon << endl << "Output: " << sqrt(num,epsilon) << endl; 
    return 0;
}
