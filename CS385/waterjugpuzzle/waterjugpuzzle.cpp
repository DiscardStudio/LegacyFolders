/*******************************************************************************
 * Name        : waterjug.cpp
 * Author      : Simrun Heir, Michael Sanchez
 * Date        : 3/14/2021
 * Description : Finding shortest solution to Water Jug Puzzle using BFS.
 * Pledge      : I pledge my honor that I have abided by the Stevens Honor System.
 ******************************************************************************/
#include <iostream>
#include <sstream>
#include <vector>
#include <queue>
#include <string>

using namespace std;

// Struct to represent state of water in the jugs.
struct State {
    int a, b, c;
    string directions;
    State *parent;
    
  	State() : a{0}, b{0}, c{0}, directions{""}, parent{nullptr} { } //compiles with this
    State(int _a, int _b, int _c, string _directions) : 
        a{_a}, b{_b}, c{_c}, directions{_directions}, parent{nullptr} { }
    
    // String representation of state in tuple form.
    string to_string() {
        ostringstream oss;
        oss << "(" << a << ", " << b << ", " << c << ")";
        return oss.str();
    }
  
	bool operator==(State &other) {
        return to_string() == other.to_string();
    }

    void operator=(State &other) {
        a=other.a;
        b=other.b;
        c=other.c;
        directions=other.directions;
        parent=other.parent;
    }
};

string node_hop(State *n) {
    if(n->parent==nullptr||n==n->parent||n==n->parent->parent)
        return n->directions;
    else
        return node_hop(n->parent)+"\n"+n->directions;
}

string bfs(int a, int b, int c, State &cap, State &goal_state){
    queue <State*> states_visited;
    vector<vector<State*> > visited(cap.a+1, vector<State*>(cap.b+1));
    State *initial=new State(a, b, c, ("Initial state. (0, 0, "+to_string(c)+")"));
    states_visited.push(initial);
    while (!states_visited.empty()) {
        State *current = states_visited.front();
        states_visited.pop();
        if (*current==goal_state&&current->a==goal_state.a&&current->b==goal_state.b&&current->c==goal_state.c) {
            string result = node_hop(current);
            delete current;
            for(auto r: visited)
                for(auto c: r)
                    delete c;
            while(!states_visited.empty()) {
                auto temp = states_visited.front();
                states_visited.pop();
                delete temp;
            }
            return result;
        }
        if(visited[current->a][current->b]!=nullptr&&*(visited[current->a][current->b])==*current) {
            delete current;
            continue;
        }
        visited[current->a][current->b]=current;
        int pour = 0;
        //pouring steps 1-6
        //1) C -> A
        if(current->c > 0 && current->a < cap.a) {
            pour = cap.a-current->a;
            if(pour > current->c)
                pour = current->c;
            State *next=new State(current->a+pour,current->b,current->c-pour, "Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from C to A. "+"("+to_string(current->a+pour)+", "+to_string(current->b)+", "+to_string(current->c-pour)+")");
            next->parent=current;
            states_visited.push(next);
        }
        //2) B -> A
        if(current->b > 0 && current->a < cap.a) {
            pour = cap.a-current->a;
            if(pour > current->b)
                pour = current->b;
            State *next=new State(current->a+pour,current->b-pour,current->c, "Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from B to A. "+"("+to_string(current->a+pour)+", "+to_string(current->b-pour)+", "+to_string(current->c)+")");
            next->parent=current;
            states_visited.push(next);
        }
        //3) C -> B
        if(current->c > 0 && current->b < cap.b) {
            pour = cap.b-current->b;
            if(pour > current->c)
                pour = current->c;
            State *next=new State(current->a,current->b+pour,current->c-pour, ("Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from C to B. "+"("+to_string(current->a)+", "+to_string(current->b+pour)+", "+to_string(current->c-pour)+")"));
            next->parent=current;
            states_visited.push(next);
        }
        //4) A -> B
        if(current->a > 0 && current->b < cap.b) {
            pour = cap.b-current->b;
            if(pour > current->a)
                pour = current->a;
            State *next=new State(current->a-pour,current->b+pour,current->c, "Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from A to B. "+"("+to_string(current->a-pour)+", "+to_string(current->b+pour)+", "+to_string(current->c)+")");
            next->parent=current;
            states_visited.push(next);
        }
        //5) B -> C
        if(current->b > 0 && current->c < cap.c) {
            pour = cap.c-current->c;
            if(pour > current->b)
                pour = current->b;
            State *next =new State(current->a,current->b-pour,current->c+pour, "Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from B to C. "+"("+to_string(current->a)+", "+to_string(current->b-pour)+", "+to_string(current->c+pour)+")");
            next->parent=current;
            states_visited.push(next);
        }
        // 6) A -> C
        if(current->a > 0 && current->c < cap.c) {
            pour = cap.c-current->c;
            if(pour > current->a)
                pour = current->a;
            State *next=new State(current->a-pour,current->b,current->c+pour, "Pour " + to_string(pour)+((pour==1)? " gallon ":" gallons ")+ "from A to C. "+"("+to_string(current->a-pour)+", "+to_string(current->b)+", "+to_string(current->c+pour)+")");
            next->parent=current;
            states_visited.push(next);
        }
    }
    for(auto r: visited)
        for(auto c: r) {
        cout << c->to_string() << ": " << c->parent << endl;
            delete c;
        }
    while(!states_visited.empty()) {
        auto temp = states_visited.front();
        states_visited.pop();
        cout << temp->to_string() << ": " << temp->parent << endl;
        delete temp;
    }
    return "No solution.";
}

int main(int argc, char* const argv[]) {  
	int capsngoals[6];
	istringstream iss;

    if (argc != 7) {
        cerr <<"Usage: ./waterjugpuzzle <cap A> <cap B> <cap C> <goal A> <goal B> <goal C>" << endl;
        return 1;
    }
  	for(int x=1;x<=6;x++) {
   		iss.str(argv[x]);
    	if(!(iss >> capsngoals[x-1])||(x==3&&capsngoals[x-1] <= 0)||(capsngoals[x-1]<0)) {
        	cerr << "Error: Invalid "<< ((x<4)? "capacity ":"goal ") << "'"<< argv[x] <<"' for jug " << ((x==3||x==6)? "C":((x==2||x==5)?"B":"A")) << "." << endl;
        	return 1;
    	}
      iss.clear();
  	}
		int acc=0;
    for(int x=0;x<3;x++) {
        if(capsngoals[x]<capsngoals[x+3]) {
            cerr << "Error: Goal cannot exceed capacity of jug " << ((x==2)? "C":((x==1)?"B":"A")) << "." << endl;
            return 1;
        }
        acc+=capsngoals[x+3];
        }
	if(acc!=capsngoals[2]) {
        cerr << "Error: Total gallons in goal state must be equal to the capacity of jug C."<< endl;
        return 1;
    }
    State caps(capsngoals[0], capsngoals[1], capsngoals[2], "Caps.");
    State *goal_state = new State(capsngoals[3], capsngoals[4], capsngoals[5], "Goal State.");
    cout << bfs(0,0, capsngoals[2], caps, *goal_state) << endl;
    delete goal_state;
    return 0;
}