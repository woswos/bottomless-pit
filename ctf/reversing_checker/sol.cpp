#include <iostream>

using namespace std;


int check(char *check_input) {
  int result;
  int check_input_len;
  uint i;

  check_input_len = strlen(check_input);
  if (check_input_len < 0x14) {
    result = 0;
  }
  else {
    if (*check_input == 'a') {
      if (check_input[1] == 'q') {
        if (check_input[2] == 'u') {
          if (check_input[3] == 'a') {
            i = 0;
            while (check_input_len = check_input_len - 1, i <= check_input_len) {



                  cout << "input: " << check_input[i] << endl;
                  cout << "comparing to: " << check_input[check_input_len] << endl << endl;



              if (check_input[i] != check_input[check_input_len]) {
                return 0;
              }
              i = i + 1;
            }
            result = 1;
          }
          else {
            result = 0;
          }
        }
        else {
          result = 0;
        }
      }
      else {
        result = 0;
      }
    }
    else {
      result = 0;
    }
  }
  return result;
}


int main() {

    string input = "aquaaaaaaaaaaaaaaaaaaaauqa";

    int n = input.length();

    // declaring character array
    char char_array[n + 1];

    // copying the contents of the
    // string to char array
    strcpy(char_array, input.c_str());


    //cout <<

    check(char_array);

    cout << endl;

    return 0;
}
