/*******************************************************************************
 * Name        : stairclimber.cpp
 * Author      : Michael Sanchez
 * Date        : 
 * Description : Lists the number of ways to climb n stairs.
 * Pledge      : I pledge my honor that I have abided by the Stevens Honor System.
 ******************************************************************************/
#include <iostream>
#include <vector>
#include <algorithm>
#include <sstream>
#include <iomanip>

using namespace std;

int sum(vector<int> &steps) {
    int total=0;
    for(int x: steps)
        total+=x;
    return total;
}

vector< vector<int> > get_ways(int num_stairs) {
    // TODO: Return a vector of vectors of ints representing
    // the different combinations of ways to climb num_stairs
    // stairs, moving up either 1, 2, or 3 stairs at a time.
    vector<vector<int>> temp;
    if(num_stairs<=0)
        temp.push_back(vector<int>());
    else {
        for(int i=1;i<4;i++){
            if(num_stairs>=i){
                vector<vector<int>> temp2 = get_ways(num_stairs-i);
                for(int x=0;x<temp2.size();x++){
                    temp2.at(x).insert(temp2.at(x).begin(), 1, i);
                }
                temp.insert(temp.end(),temp2.begin(),temp2.end());
            }
        }
    }

    return temp;
}

void display_ways(const vector< vector<int> > &ways) {
    // TODO: Display the ways to climb stairs by iterating over
    // the vector of vectors and printing each combination.
    int w=ways.size(),n=((w>0)?ways.at(0).size():0);
    cout << w << " way" << ((w==1)?"":"s") << " to climb " << n << " stair" << ((n==1)?".":"s.") << endl;
    for(int x=0;x<ways.size();x++){
        if(w>10)
            cout << setw(to_string(w).size());
        cout << x+1;
        cout <<". [";
        for(int i=0;i<ways.at(x).size();i++)
            cout << ways.at(x).at(i) << ((i==ways.at(x).size()-1)? "" : ", ");
        cout << "]" << endl;
    }
}

int main(int argc, char * const argv[]) {
    int s;
    stringstream iss;
    if(argc != 2) {
        cout << "Usage: ./stairclimber <number of stairs>" << endl;
        return 0;
    }
    iss.str(argv[1]);
    if(!(iss >> s)||s<=0){
        cout << "Error: Number of stairs must be a positive integer." << endl;
        return 0;
    }
    else {
        display_ways(get_ways(s));
    }
    return 0;
}
