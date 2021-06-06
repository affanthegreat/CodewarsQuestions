import 'dart:convert';
int solution(String digits) {
  // Your code here
  List<int> x = <int>[];
  x.add(int.parse(digits.substring(digits.length -5 , digits.length -1)));
  for(var i = 0 ; i < digits.length-4 ; i++){
    var subString = digits.substring(i,i+5);
    var y = int.parse(subString);
    x.add(y);
  }
  x.sort();
  return x[x.length - 1];
}