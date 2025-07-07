import 'dart:io';
void main()
{
//   print("Enter size: ");
//   final s = stdin.readLineSync();
//   if(s!=null){
//   final size = int.tryParse(s);
//       if(size!=null){
// var numbers = List<int>.empty();
//   for(int i=1; i<= size; i++){
//     print("Enter number : ");
//     final value = int.parse(stdin.readLineSync()!);
//     numbers.add(value);
//   }

//   print(numbers);
//   }
  
//   }

  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int number = int.parse(input);
      print('You entered: $number');
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('No input provided.');
  }
  
}