import 'dart:convert';
int maxNumber(n) {
  // your code here
  List<int> digits = <int>[];
     while(n != 0){
    var digit = n % 10;
    n =  (n / 10).toInt();
      print(digit);
    digits.add(digit);
  }
  digits.sort();
  var x = digits.reversed;
  var xw = x.join();
  return int.parse(xw);
}