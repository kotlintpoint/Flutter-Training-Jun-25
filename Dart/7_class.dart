class Student{
  late int id;
  late String? name;

  Student(this.id, this.name);  // parameterized constructor

  Student.noParameterConstructor() {
    this.id = -1;
    this.name = "Unknonwn";
  }
  Student.withIdConstructor(this.id) {    
    this.name = "Unknonwn";
  }

  void setData(int id, [String? name]){
     this.id = id;
     this.name = name ?? "Unknown";
  }

  void displayStudent() {
    print("ID : ${this.id} and Name : ${this.name}");
  }
}
void main() {
  final student = Student.noParameterConstructor();
  student.setData(10);
  student.displayStudent();

  student.setData(15, "Sachin");
  student.displayStudent();

  final student2 = Student.withIdConstructor(25);
  student2.displayStudent();


  final student3 = Student(35, "Mayur");
  student3.displayStudent();

}