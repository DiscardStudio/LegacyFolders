/*******************************************************************************
 * Name        : sieve.cpp
 * Author      : Michael Sanchez
 * Date        : 9/18/19
 * Description : Sieve of Eratosthenes
 * Pledge      : I pledge my honor that I have abided by the Stevens Honor System.
 ******************************************************************************/
#include <cmath>
#include <iomanip>
#include <iostream>
#include <sstream>

using namespace std;

class PrimesSieve {
public:
    PrimesSieve(int limit);

    ~PrimesSieve() {
        delete [] is_prime_;
    }

    int num_primes() const {
        return num_primes_;
    }

    void display_primes() const;

private:
    // Instance variables
    bool * const is_prime_;
    const int limit_;
    int num_primes_, max_prime_;

    // Method declarations
    int count_num_primes() const;
    void sieve();
    static int num_digits(int num);
};

PrimesSieve::PrimesSieve(int limit) :
        is_prime_{new bool[limit + 1]}, limit_{limit} {
    sieve();
}

void PrimesSieve::display_primes() const {
    int temp=0;
    const int max_prime_width = num_digits(max_prime_),
 primes_per_row = 80 / (max_prime_width + 1);
    for(int x=2;x<=limit_;x++)
        if(is_prime_[x])
        {
            if(num_digits(max_prime_)>2)
                cout << fixed << setw(max_prime_width);
            cout << x <<((x==max_prime_||temp==primes_per_row-1)? "":" ");
            temp++;
            if(temp==primes_per_row)
            {
                cout << endl;
                temp = 0;
            }
        }
}

int PrimesSieve::count_num_primes() const {
    int count=0;
    for(int x=2;x<=limit_;x++)
        if(is_prime_[x])
            count++;
    return count;
}

void PrimesSieve::sieve() {
    for(int i=2;i<=limit_;i++)
        is_prime_[i]=true;
    for(int i=2;i<=sqrt(limit_);i++)
        if(is_prime_[i])
        {
            for(int j=i*i;j<=limit_;j+=i)
                is_prime_[j]=false;
        }
    for(int x=2;x<=limit_;x++)
        if(is_prime_[x])
            max_prime_=x;

    num_primes_=count_num_primes();
}

int PrimesSieve::num_digits(int num) {
    return num==0?0:1+num_digits(num/10);
}

int main() {
    cout << "**************************** " <<  "Sieve of Eratosthenes" <<
            " ****************************" << endl;
    cout << "Search for primes up to: ";
    string limit_str;
    cin >> limit_str;
    int limit;

    // Use stringstream for conversion. Don't forget to #include <sstream>
    istringstream iss(limit_str);

    // Check for error.
    if ( !(iss >> limit) ) {
        cerr << "Error: Input is not an integer." << endl;
        return 1;
    }
    if (limit < 2) {
        cerr << "Error: Input must be an integer >= 2." << endl;
        return 1;
    }
    PrimesSieve l(limit);
    cout << endl << "Number of primes found: " << l.num_primes() << endl;
    cout << "Primes up to " << limit << ":" << endl;
    l.display_primes();
    return 0;
}
