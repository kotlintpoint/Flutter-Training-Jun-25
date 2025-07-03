void main()
{
  print("Factorial of 5 is ${factorial(5)}");

  findPerimeter(10, 12);
  print("The perimeter is ${findPerimeter1(4, 6)}");

  calculateSimpleInterest(100000, 5);
  calculateSimpleInterest(100000, 5, 10);

   calculateSimpleInterestDefault(100000, 5);
  calculateSimpleInterestDefault(100000, 5, rate: 10);

  rectangleArea(length: 5, height: 3, breadth: 2);
}

int factorial(int num){
  int fact = 1;
  while(num >= 1){
    fact*=num;
    num--;
  }
  return fact;
}

// Function expression
void findPerimeter(int length, int breadth) => print("The perimeter is ${2 * (length + breadth)}");

int findPerimeter1(int length, int breadth) => 2 * (length + breadth);

// optional parameter
void calculateSimpleInterest(int p, int n, [int? r]){
  int rate = r ?? 9;
  double interest = (p * n * rate) / 100;
  print("Interest is $interest");
}

void calculateSimpleInterestDefault(int p, int n, {int rate = 9}){  
  double interest = (p * n * rate) / 100;
  print("Interest is $interest");
}

void rectangleArea({int length=1, int breadth=1, int height=1})
{
  print("Area = ${length * breadth * height}");
}