import 'dart:convert';
String strong(n) {
var res = n;
List<int> digits = <int>[];
while(n.toInt() !=0){
    var dig = n %10;
     n = n / 10;
    digits.add(dig.toInt());
  
  }
 var sum = 0;
 for(var i = 0 ; i < digits.length ; i++){
      var factor = fact(digits[i]);
      sum = sum + factor;
 }
print(sum);
 if(sum == res){
   return "STRONG!!!!";
 }
 else{
 return "Not Strong !!";
 }
}
int fact(int x){
  int fact = 1;
  for(var i = 1 ; i < x+1 ;i++){
      fact = fact * i;
  }
  return fact;
}
