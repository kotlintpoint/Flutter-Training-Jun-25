class Student{
  late int _id;
  late String? _name;

  set Id(int value) { _id = value; }
  int get Id => _id;

  set Name(String? value) { _name = value; }
  String? get Name => _name ?? "Unknown";

  Student(this._id, this._name);  // parameterized constructor

  Student.noParameterConstructor() {
    this._id = -1;
    this._name = "Unknonwn";
  }
  Student.withIdConstructor(this._id) {    
    this._name = "Unknonwn";
  }

  void setData(int id, [String? name]){
     this._id = id;
     this._name = name ?? "Unknown";
  }

  void displayStudent() {
    print("ID : ${this._id} and Name : ${this._name}");
  }
}

