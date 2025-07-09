class User {
  int? id, age;
  String? name;

  User(){
  }
  
  User.withValues(this.id, this.name, this.age);

  @override
  String toString() {
    return "$id <=> $name <=> $age";
  }
}

void main() {
  List<User> users = [];
  users.add(User.withValues(1, "Ajay", 15));
  users.add(User.withValues(2, "Vijay", 25));
  users.add(User.withValues(3, "Jay", 35));
  users.add(User.withValues(4, "Ajay", 25));
  users.add(User.withValues(5, "Ajay", 15));

  print(users);

}
