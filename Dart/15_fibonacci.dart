import 'dart:io';
// 1 1 2 3 5 8 13 21 ...
void main() {
  int range = 10;

  int no1 = 0;
  int no2 = 1;
  // int result = no1 + no2; // result = 1
  // print(result);

  // no1 = no2; // no1 = 0
  // no2 = result; // no2 = 1
  // result = no1 + no2; // result = 1
  // print(result);

  // no1 = no2; // no1 = 1
  // no2 = result; // no2 = 1
  // result = no1 + no2; // result = 2
  // print(result);

  // no1 = no2; // no1 = 1
  // no2 = result; // no2 = 2
  // result = no1 + no2; // result = 3
  // print(result);

  for (int i = 1; i <= 10; i++) {
    int result = no1 + no2;
    stdout.write("$result   ");
    no1 = no2; 
    no2 = result; 
  }
}
