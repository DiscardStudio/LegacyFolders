/*******************************************************************************
 * Name        : sieve.cpp
 * Author      : Simrun Heir, Michael Sanchez
 * Date        : February 14, 2021
 * Description : Sieve of Eratosthenes
 * Pledge      : I pledge my Honor that I have abided by the Stevens Honor System.
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
    // TODO: write code to display the primes in the format specified in the
    // requirements document.

    //finds width of maximum prime value
    const int max_prime_width = num_digits(max_prime_),
                primes_per_row = 80 / (max_prime_width + 1);

    int primesPrinted = 0;

    for (int i=2; i<=limit_; i++) {
        if (is_prime_[i]) {
            if (num_digits(max_prime_)>2) {
                cout << fixed << setw(max_prime_width);
            }
            cout << i << (( (i==max_prime_) || (primesPrinted==(primes_per_row-1)) )? "":" ");
            primesPrinted++;
            if (primesPrinted==primes_per_row) {
                primesPrinted = 0;
                cout << endl;
                /*if (i!=limit_ || i!=max_prime_) {}*/
            } 
        }
    }
}

int PrimesSieve::count_num_primes() const {
    // TODO: write code to count the number of primes found
    int count = 0;
    for (int i=2; i<=limit_; i++) {
        if (is_prime_[i]) {
            count++;
        }
    }
    return count;
}

void PrimesSieve::sieve() {
    // TODO: write sieve algorithm
    /*
    Input: an integer n > 1
    Let is_prime be an array of bool values, indexed by integers 2 to n,
    initially all set to true.
        for i = 2, 3, 4, ..., while i <= sqrt(n);
            if is_prime[i] is true:
                for j = i^2, i^2 + i, i^2 + 2i, ..., while j <= n:
                    is_prime[j] = false
    Now all i such that is_prime[i] is true are prime.
    */
   for (int i=0; i<=limit_; i++) {
       is_prime_[i] = true;
   }
   for (int i=2; i<=sqrt(limit_); i++) {
       if (is_prime_[i]) {
           for (int j=i*i; j<=limit_; j+=i) {
               is_prime_[j] = false;
           }
       }
   }
   num_primes_ = count_num_primes();

   for (int i=2; i<+limit_; i++) {
        if (is_prime_[i]) {
            max_prime_ = i;
        }
    }
}

int PrimesSieve::num_digits(int num) {
    // TODO: write code to determine how many digits are in an integer
    // Hint: No strings are needed. Keep dividing by 10.
    int digits = 1;
    while(num>=10) {
        num = num/10;
        digits++;
    }
    return digits;
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

    // TODO: write code that uses your class to produce the desired output.
    PrimesSieve sieve(limit);
    cout << endl;
    cout << "Number of primes found: " << sieve.num_primes() << endl;
    cout << "Primes up to " << limit << ":" << endl;
    sieve.display_primes();

    return 0;
}
