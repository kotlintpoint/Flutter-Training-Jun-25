import '8_getter_setter.dart';

void main() {
  final s1 = Student.noParameterConstructor();
  s1.Id = 10;
  s1.Name = "Sachin";
  // s1.displayStudent();

  print("Id is ${s1.Id}");
  print("Name is ${s1.Name}");

  Student? s2;
  s2?.Id = 50;
  print("Id is ${s2?.Id}");
}