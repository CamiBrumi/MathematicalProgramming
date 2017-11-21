#include <iostream>
#include <cmath>
#include <vector>

using namespace std;

int main() {

/*
PROGRAMA QUE TRADUEIX EL FORMAT DE DADES DE L'HEREDIA A MATLAB
 */

string act; cin >> act;
bool primer = true;
int count = 0;
cout << "c = [";
cin>>act;
while (act != "A="){
    
    if (not primer) cout << ",";
    cout << " " << act;
    cin >> act;
    primer = false;
    ++count;
}

int count2 = 0;

cout << "]';" << endl << "A= [";

bool pprimer = true;
    cin >> act;
while(act != "b="){
    ++count2;  
    primer = true;
    if (not pprimer) cout << "; " << endl;
    pprimer = false;
    for(int i = 0; i < count and act != "b=" ; ++i){
        if (not primer) cout << ",";
        cout << " " << act;
        cin >> act;
        primer = false;
    }      
}

cout << "];" << endl << "b = [";
primer = true;
for (int i = 0; i < count2; ++i){
    cin >> act;
    if (not primer) cout << ",";
    cout << " " << act;
    primer = false;
}
cout << "]';" << endl;


}
