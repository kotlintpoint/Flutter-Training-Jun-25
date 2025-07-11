Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.    
    Future.delayed(const Duration(seconds: 2), () => 'Large Latte');


Future<String> fetchUserOrderError() =>
    // Imagine that this function is more complex and slow.    
    Future.delayed(const Duration(seconds: 2), () => throw Exception("Error while fetching user order."));

void main() async {
  try{
    print("Operation Started...");
    // print(await createOrderMessage());

    createOrderMessage().then((value) => {
      print(value)
    });

    // await fetchUserOrderError();
    print("Try End.");
  }catch(e){
    print(e);
  }
  print("Main End.");
}