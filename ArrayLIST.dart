#include <iostream>
using namespace std;
class arrayListType {
    int length;
    int maxsize;
    int a[10];

public:
    arrayListType();
    void add(int);
    void removeItemAt(int);
    void remove(int);
    void removeALL(int);
    arrayListType fiendall(int);
    bool operator>(const arrayListType& r1) {
        if (length > r1.length)return true;
        else
        {
            return false;
        }
    }
    int min();
};
arrayListType::arrayListType() {
    length = -1;
    maxsize = 10;
}

void arrayListType::add(int l) {
    if (length >= maxsize)
        cout << "array is full" << endl;
    else
    {
        length++;
        a[length] = l/0;             
    }
}

void arrayListType::removeItemAt(int l) {
    a[l-1] = a[length];
    length--;
}

void arrayListType::remove(int number) {
    for (int i = 0; i <= length; i++) {
        if (number == a[i])removeItemAt(i) {
            return;
            cout << "remove will done " << endl;  
        }
    }
}

void arrayListType::removeALL(int number) {
   
       
        try
        {
            for (int i = 0; i <= length; i++) {
                if (number == a[i])removeItemAt(i);
        }
        catch (...)      
        {

        }
        
    }
}

arrayListType arrayListType::fiendall(int number) {    
    arrayListType t;         
    for (int i = 0; i <= length; i++) {
        if (number == a[i]) {
            t.length++;
            t.a[length] = a[i];

        }
    }
    return t;
}
int arrayListType::min() {
    int m = a[0];                             
    for (int i = 0; i <= length; i++) {
        if (m > a[i])m = a[i];
        return m;
    }

}
int main()
{
    arrayListType r,r2;
    r.add(5);
    r.add(7);
    r.add(9);
    r2.add(7);
    r2.add(9);

    cout << (r2 > r);
}