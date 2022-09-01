#include<iostream>

using namespace std;


void display_array_ptr(int array[], const int length)
{
    cout << "[";
    if(length>=1)
        cout<< array[0];
    for(int *i = array + 1, *end = (array + length); i < end; i++)
        cout << ", " << *i;
    cout << "]" << endl;
}


int main()
{
    int a=3,
        b=7,
        c=a-b,
        d=(c>>7);
    cout << d << endl;
    d=d&1;
    cout << d << endl << (a-c*d) << endl;
    return 0;
}
