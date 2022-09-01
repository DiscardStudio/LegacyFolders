//Michael Sanchez
//I pledge my honor that I have abided by the Stevens Honor System.

#include <iostream>
#include <algorithm>
#include <sstream>
#include <fstream>
#include <vector>
#include <cstdlib>
#include <utility>
using namespace std;
vector<pair<int,string> > get_path(int num_vert, vector<pair<pair<int,int>,int> > connect, vector<string> address) {
    vector<pair<int,string> > s = vector<pair<int,string> >();
    int i=1,l=0;
    while(l < connect.size() && !(s.size()==num_vert-1)) {
        vector<pair<int,string> > temp= vector<pair<int,string> >();
        if(i==(int)(connect.at(l).first.first)) {
            s.push_back(pair<int,string>(connect.at(l).second,address.at(l)));
            l++;
        }
        else {
            i++;
            int min = -1;
            for(int x=1;x<temp.size();x++) {
                if(min ==-1 || temp.at(min)>temp.at(x))
                    min=x;
            }
            if(min!=-1)
                s.push_back(temp.at(min));
        }
    }
    return s;
}
int main(int argc, char * argv[]) {
    if(argc!=2) {
        cerr << "Usage: ./powergrid <input file>" << endl;
        return 0;
    }
    string in;
    int num_vert=0;
    vector<pair<pair<int,int>,int> > connect;
    vector<string> street;
    stringstream iss(argv[1]);
    int i = 1;
    fstream fs;
    iss>>in;
    fs.open(in);
    if (fs.fail()||in=="") {        
        cerr << "Error: Cannot open file '"<< in <<"'." << endl;
        return 0;
    }
    getline(fs,in);
    try {
        num_vert = stoi(in);
    } catch(exception e) {
        cerr << "Error: Invalid number of vertices '"<<in<<"' on line " << i<<"." << endl;
        return 0;
    }
    if(num_vert < 1 || num_vert > 1000){
        cerr << "Error: Invalid number of vertices '"<<num_vert<<"' on line "<< i<<"." << endl;
        return 0;
    }

    while(getline(fs,in)) {
        i++;
        string m1,m2,weight;
        try {
            size_t i1 = in.find(",",0);
            size_t i2 = in.find(",",i1+1);
            size_t i3 = in.find(",",i2+1);
            size_t i4 = in.find(",",i3+1);
            if(i1==-1||i2==-1||i3==-1){
                cerr << "Error: Invalid edge data '"<<in<<"' on line "<< i<<"." << endl;
                return 0;
            }
            m1 = in.substr(0,i1);
            m2 = in.substr(i1+1,i2-i1-1);
            weight = in.substr(i2+1,i3-i2-1);
            street.push_back(in.substr(i4+1,in.length()-i4));
        } catch(exception e) {
            cerr << "Error: Invalid edge data '"<<in<<"' on line "<< i<<"." << endl;
            return 0;
        }
        int l1=-1,l2=-1,w=-1;
        try {
            l1=stoi(m1);
            l2=stoi(m2);
            w=stoi(weight);
            
            if(l1 > num_vert || l1 < 1){
                cout << "Error: Starting vertex '"<< m1<<"' on line "<<i<<" is not among valid values 1-"<<num_vert<<"." <<endl;
                return 0;
            }
            else if(l2 > num_vert || l2 < 1){
                cout << "Error: Ending vertex '"<< m2<<"' on line "<<i<<" is not among valid values 1-"<<num_vert<<"." <<endl;
                return 0;
            }
            else if(w < 0){
                cout << "Error: Invalid edge weight '"<< weight<<"' on line "<<i<<"." <<endl;
                return 0;
            }
            pair<int,int> c = pair<int,int>(l1,l2);
            connect.push_back(pair<pair<int,int>, int>(c,w));
        }catch (exception e) {
            if(l1 > num_vert || l1 < 1)
                cout << "Error: Starting vertex '"<< m1<<"' on line "<<i<<" is not among valid values 1-"<<num_vert<<"." <<endl;
            else if(l2 > num_vert || l2 < 1)
                cout << "Error: Ending vertex '"<< m2<<"' on line "<<i<<" is not among valid values 1-"<<num_vert<<"." <<endl;
            else
                cout << "Error: Invalid edge weight '"<< weight<<"' on line "<<i<<"." <<endl;
            return 0;
        }
    }
    fs.close();
    //get solution
    vector<pair<int,string> > out = get_path(num_vert, connect, street);
    if(out.size() < 2)
        cout << "No solution." << endl;
    else {
        int sum=0;
        for(int x=0;x<out.size();x++)
            sum+=out.at(x).first;
        cout << "Total wire length (meters): "<< sum << endl;
        for(int x=0;x<out.size();x++)
            cout << out.at(x).second.substr(out.at(x).second.find_last_of(",")+1)<<" ["<<out.at(x).first<<"]" << endl;
    }
    return 0;
}


