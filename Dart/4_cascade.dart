
class User {
  var n1, n2;
  void setValue(num1, num2){
    this.n1 = num1;
    this.n2 = num2;
  }
  void addValue() {
    print("Sum = ${this.n1 + this.n2}");
  }
}

void main() {
  var user1 = User();
  user1.setValue(100, 200);
  user1.addValue();

  var user2 = User();
  user2..setValue(20,30)..addValue();

  User? user3;
  user3?..setValue(20,30)..addValue();

  print(user3 is User?);
  
}