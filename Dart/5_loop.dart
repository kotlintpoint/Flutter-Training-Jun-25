void main() {
  var cities = ["City1", "City2222","City33"];
  for(var city in cities){
    print("City => $city [${city.length}]");
  }

  int sum = 0;
  var numbers = [7,8,5,2,3];
  
  // numbers.forEach((n) => sum += n);

  numbers.forEach((n) {
    sum += n;;
    print("number = $n");
  });
  print("Sum = $sum");
}