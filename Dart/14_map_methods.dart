void main() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu'],
  };

  print(hawaiianBeaches["Kauai"]);
  print(hawaiianBeaches.containsKey("Kauai"));
  print(hawaiianBeaches.containsKey("Kauai1"));
  // if(hawaiianBeaches.containsKey("Kauai")){
  //   var values = hawaiianBeaches.remove("Kauai");
  //   print("Removed => $values");
  // }
  print(hawaiianBeaches);

  var keyList = hawaiianBeaches.keys;
  print(keyList);
  for(var key in keyList){
    print("$key => ${hawaiianBeaches[key]}");
  }

  var teas = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  var numbers = [1,2,3,4,5];
  var squareNumbers = numbers.map((num) => num * num);
  squareNumbers.forEach(print);
}