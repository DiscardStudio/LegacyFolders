//I pledge my honor that I have abided by the Stevens Honor System.
//Michael Sanchez

#include <vector>
#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

class Student
{
    private:
        string first_;
        string last_;
        float gpa_;
        int id_;

    public:
        Student(string first, string last, float gpa, int id)
        {
            first_= first;
            last_=last;
            gpa_=gpa;
            id_=id;
        }
        string full_name() const
        {
            return first_+" "+last_;
        }

        int id() const
        {
            return id_;
        }

        float gpa() const
        {
            return gpa_;
        }

        void print_info() const
        {
            cout << full_name() << ", GPA: ";
            cout << fixed << setprecision(2) << gpa();
            cout << ", ID: " << id() << endl;
        }
};
vector<Student> find_failing_students(const vector<Student> &students)
{
    vector<Student> failing_students;

    for(const auto s: students)
        if(s.gpa()<1.00)
            failing_students.push_back(s);
    
    return failing_students;
}

void print_students(vector<Student> &students)
{
    for(const auto s: students)
        s.print_info();
}

int main()
{
    string first_name, last_name;
    float gpa;
    int id;
    char repeat;
    vector<Student> students;
    do {
        cout << "Enter student's first name: ";
        cin >> first_name;
        cout << "Enter student's last name: ";
        cin >> last_name;
        gpa = -1;
        while (gpa < 0 || gpa > 4) {
            cout << "Enter student's GPA (0.0-4.0): ";
            cin >> gpa;
        }
        cout << "Enter student's ID: ";
        cin >> id;
        students.push_back(Student(first_name, last_name, gpa, id));
        cout << "Add another student to database (Y/N)? ";
        cin >> repeat;
    } while (repeat == 'Y' || repeat == 'y');
    cout << endl << "All students:" << endl;
    print_students(students);
    cout << endl << "Failing students:";

    vector<Student> sl=find_failing_students(students);
    if(sl.size()==0)
        cout << " None" << endl;
    else
    {
        cout << endl;
        for(const auto s: sl)
            s.print_info();
    }
    return 0;
}