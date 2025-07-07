void main() {
  var numbers = List.filled(5, 0, growable: false);
  print(numbers);

  // numbers.add(10);
  // print(numbers);
  
  numbers[0] = 10;
  print(numbers);

  var cities = ["A" , "B", "C", "D", "B"];
  var indexB = cities.indexOf("B");
  // returns -1 if item not in list 
  print("Index of B is $indexB");

  print(cities);
  print("Remove B : ${cities.remove("B")}");  
  print(cities);

  cities.insert(1, "F");
  print(cities);

cities.sort((a, b) => a.compareTo(b));  // ascending
cities.sort((a, b) => b.compareTo(a));  // descending
print(cities);


var marks = [56, 67,78];
var isPass = marks.every((mark) => mark >= 50);
if(isPass){
  print("You are pass");
} else {
  print("You are fail");
}

marks.forEach((mark) => print("Mark : $mark"));

}