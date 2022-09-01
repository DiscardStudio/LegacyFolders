/*******************************************************************************
 * Name        : inversioncounter.cpp
 * Author      : Simrun Heir, Michael Sanchez
 * Version     : 1.0
 * Date        : 3/24/2021
 * Description : Counts the number of inversions in an array.
 * Pledge      : I pledge my honor that I have abided by the Stevens Honor System.
 ******************************************************************************/
#include <iostream>
#include <algorithm>
#include <sstream>
#include <vector>
#include <cstdio>
#include <cctype>
#include <cstring>

using namespace std;

// Function prototype.
static long mergesort(int array[], int scratch[], int low, int high);
/**
 * Counts the number of inversions in an array in theta(n^2) time.
 */

long count_inversions_slow(int array[], int length) {
    // TODO
    long count = 0;
    for(long i=0; i<length; i++){
        for(long j=i+1; j<length; j++){ //goes through rest of list and compares to element i
            if(array[i]>array[j]){
                count++;
            }
        }
    }
    return count;
}

/**
 * Counts the number of inversions in an array in theta(n lg n) time.
 */
long count_inversions_fast(int array[], int length) {
    // TODO
    // Hint: Use mergesort!
    int *scratch = new int[length];
    long count = mergesort(array, &scratch[0], 0, length-1);
    delete [] scratch;
    return count;
}

static long mergesort(int array[], int scratch[], int low, int high) {
    // TODO
    long count = 0; //number of inversions
    int mid; //middle element of array
    if (low < high){ //rather than passing a subarray, we just change our indexing on the original array, still only runs if array has length of 1
        mid = (high + low)/2;
        count = mergesort(array, scratch, low, mid); //left side of array
        count += mergesort(array, scratch, mid+1, high); //right side of array

    	//merge-sorting
    	int left_low = low; //low of left sub-array
    	int right_low = mid+1; //low of right sub-array
		for(int i=low; i<=high; i++){
    		if( left_low<=mid && (right_low>high || array[left_low] <= array[right_low]) ){
          		/*  left_low<=mid: checks if in the original array you have gone through the entire left sub-array
            			which means list is sorted except for high
            		right_low>high: error checking for if all inversions for right sub-array have been done and the
                		left-sub array has not been touched (ex: reversed list)
                  	array[left_low] <= array[right_low]: no inversion or recurring element
            	*/
        		scratch[i] = array[left_low];
          		left_low++; //incremented because no inversions from this index to right_low
      		} else { //there is an inversion
        		scratch[i] = array[right_low];
          		count += (mid - left_low + 1); //number of inversions present, from left_low to right_low
          		right_low++;
        	}
    	}
        //merging
		for(int i=low; i<=high; i++){
    		array[i] = scratch[i];
    	}
    }
    return count;
}



int main(int argc, char *argv[]) {
    // TODO: parse command-line argument
    if(argc>2) {
  	cout << "Usage: ./inversioncounter [slow]" << endl;
    return 1;
    }
    string version = "none";
    if(argc==2){
  	version = argv[1];
        if(version!="slow"){
    	    cerr << "Error: Unrecognized option '" << argv[1] <<"'." << endl;
      	    return 1;
        }
    }

    cout << "Enter sequence of integers, each followed by a space: " << flush;

    istringstream iss;
    int value, index = 0;
    vector<int> values;
    string str;
    str.reserve(11);
    char c;
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
    if(values.size()==0) {
        cerr << "Error: Sequence of integers not received." << endl;
        return 1;
    }
    // TODO: produce output
    cout << "Number of inversions: " << ( (version=="slow")? count_inversions_slow(&values[0],values.size()):count_inversions_fast(&values[0],values.size()) ) << endl;

    return 0;
}
