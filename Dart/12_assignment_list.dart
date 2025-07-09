import 'dart:io';

void main() {
  // Prompt the user for the first number
  stdout.write('Enter the number: ');
  String? input1 = stdin.readLineSync();

  // Try to parse the first number
  int? num1 = int.tryParse(input1 ?? '');

  // Handle invalid input for the first number
  if (num1 == null) {
    stderr.writeln('Invalid input for the first number. Please enter a valid number.');
    exit(1); // Exit with an error code
  }

  var numbers = List.empty(growable: true);
  
  for(int i=1; i<=num1; i++){
    stdout.write('Enter the number$i: ');
    String? input2 = stdin.readLineSync();
    int? num2 = int.tryParse(input2 ?? '');
     // Handle invalid input for the first number
    if (num2 == null) {
      stderr.writeln('Invalid input for the number. Please enter a valid number.');
      exit(1); // Exit with an error code
    }
    numbers.add(num2);
  }

  print(numbers);

  
  
}