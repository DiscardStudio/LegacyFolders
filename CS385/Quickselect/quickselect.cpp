/*******************************************************************************
 * Name          : quickselect.cpp
 * Author        : Michael Sanchez
 * Pledge        : I pledge my honor that I have abided by the Stevens Honor System.
 * Date          : 
 * Description   : Implements the quickselect algorithm found on page 160 in
 *                 Algorithms, 3e by Anany Levitin.
 ******************************************************************************/
#include <iostream>
#include <sstream>
#include <algorithm>
#include <vector>

using namespace std;

size_t lomuto_partition(int array[], size_t left, size_t right) {
    size_t s = left;
    int p = array[left];
    for(size_t x = left+1; x <= right;x++)
        if(array[x] < p) {
            s++;
            swap(array[s],array[x]);
        }
    swap(array[left],array[s]);
    return s;
}

int quick_select(int array[], size_t left, size_t right, size_t k) {
    size_t l=left,r=right,s = lomuto_partition(array, l, r);;
    while(s!=k-1 && l<=r) {
        if(l==r)
            return array[l];
        if(s > left + k - 1)
            r=s-1;
        else if(s < k-1) {
            l=s+1;
        }
        s = lomuto_partition(array, l, r);
    }
    return array[s];
}

int quick_select(int array[], const size_t length, size_t k) {
    return quick_select(array, 0, length - 1, k);
}
int main(int argc, char *argv[]) {
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <k>" << endl;
        return 1;
    }

    int k;
    istringstream iss;
    iss.str(argv[1]);
    if ( !(iss >> k) || k <= 0 ) {
        cerr << "Error: Invalid value '" << argv[1] << "' for k." << endl;
        return 1;
    }

    cout << "Enter sequence of integers, each followed by a space: " << flush;
    int value, index = 0;
    vector<int> values;
    string str;
    str.reserve(11);
    char c;
    iss.clear();
    while (true) {
        c = getchar();
        const bool eoln = c == '\r' || c == '\n';
        if (isspace(c) || eoln) {
            if (str.length() > 0) {
                iss.str(str);
                if (iss >> value) {
                    values.push_back(value);
                } else {
                    cerr << "Error: Non-integer value '" << str
                         << "' received at index " << index << "." << endl;
                    return 1;
                }
                iss.clear();
                ++index;
            }
            if (eoln) {
                break;
            }
            str.clear();
        } else {
            str += c;
        }
    }

    const int num_values = values.size();
    if (num_values == 0) {
        cerr << "Error: Sequence of integers not received." << endl;
        return 1;
    }
    if(k > num_values) {
        cerr << "Error: Cannot find smallest element " << k << " with only " << num_values << " value" << ((num_values == 1)? ".":"s.") << endl;
        return 0;
    }
    int e = quick_select(&values[0], num_values,k);
    cout << "Smallest element " << k << ": " << e << endl;
    return 0;
}
