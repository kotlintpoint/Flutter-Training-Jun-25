void main() {
  const num1 = 25;
  const num2 = 20;

  var result = num1 > num2 ? "num1 greater than num2" : "num2 greater than num1";
  print(result);

  int? sum;
  var answer = sum ?? "Result not Ready.";
  print("Answer : $answer");

  sum = num1 + num2;
  answer = sum ?? "Result not Ready.";
  print("Answer : $answer");
}