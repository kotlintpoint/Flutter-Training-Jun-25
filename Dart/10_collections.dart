
void main() {
  
  var list = [1, 2, 3, 4, 3, 2];
  // list.add("ABCD")
  var vehicles = ["Car", "Bike", "Scooter"];

  print("List = $list");
  print("Length = ${vehicles.length}");
  print("Value at 1 is ${vehicles[0]}");
  // Update
  vehicles[0] = "Plane";
  print("Now Value at 1 is ${vehicles[0]}");

  // Set - unordered unique elements only
  var numberSet = {1, 2, 3, 4, 3, 2};
  print("numberSet - $numberSet");

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  names.add("Raj");
  names.add("Raj");
  names.add("Raj");
  names.addAll(vehicles);
  print("Names => $names");


  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };
  print("Map : $gifts");

  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};
  print("Map : $nobleGases");

  var cities = Map<String, int>();
  cities['surat'] = 200;
  cities['bharuch'] = 200;
  // update
  cities['surat'] = 100;
  print(cities);
}