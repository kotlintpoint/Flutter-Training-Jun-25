// Task 19:
// Create a class hierarchy with a Vehicle superclass and Car and Bike subclasses. Implement
// methods in each subclass that print specific details, like the type of vehicle, fuel type, andmax speed.
void main(){
  final car = Car();
  car.vehicleNumber = "ABC!@#";
  car.printVehicleNumber();
  car.printVehicleDetails();

  final bike = Bike();
  bike.vehicleNumber = "AASDC99";
  bike.printVehicleNumber();
  bike.printVehicleDetails();

  // final vehicle = Vehicle();
  // vehicle.printVehicleDetails();
}
// Parent class
abstract class Vehicle{
  static String? companyName;
  String? vehicleNumber;
  void printVehicleNumber() {
    print("Vehicle Number is : $vehicleNumber");
  }

  // abstract method  
  void printVehicleDetails();
  
}
// Child Class
class Car extends Vehicle
{
  //Override 
  void printVehicleDetails(){
    print("Fuel :- Petrol" );
    print("Four Wheeler" );
    print("Company:- Suzuki");
  }
}
class Bike extends Vehicle
{
  @override
  void printVehicleDetails() {
      print("Fuel :- petrol" );
      print("Two wheeler" );
      print("Company:- Hero");
  }

}

class Bicycle extends Vehicle {
  @override
  void printVehicleDetails() {
    // TODO: implement printVehicleDetails

  }
}