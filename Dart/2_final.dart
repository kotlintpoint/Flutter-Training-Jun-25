void main() {
  const int num = 100;  
  print("num = $num");

  // num = 200;
  const int num2 = 200; // compile time 
  
  final int sum;
  sum = num + num2; // runtime 
  
  print("sum = $sum");

  final pi = 3.14159;
  const pi_1 = 3.14159;

}