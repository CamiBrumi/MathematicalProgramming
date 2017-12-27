#include <iostream>
#include <vector>
#include <regex>
using namespace std;
typedef vector<string> VS;

int main(){
  regex rr("((\\+|-)?[[:digit:]]+)(\\.(([[:digit:]]+)?))?");
  VS vy = VS(1e5);
  string x, y;
  int count = 0;
  while (cin >> y) {
    if(regex_match(y,rr)) {
      x = y;
      cin >> y;
      vy[std::stoi( x )] = y;
      //if (count%2 == 0) x = int(count);
      //else if (count%2 == 1) vy[x] = y;
      ++count;
    }
  }

  cout << "y = [";
  for (int i = 0; i < count; ++i) {
    if (i != 0) cout << " ," << vy[i];
    else cout << vy[i];
  }
  cout << "];" << endl;
  /*
  cout << "];" << endl << "x = [" << 0;
  for (int i = 1; i < count; ++i) cout << " ," << i;
  cout << "];" << endl; */
}
