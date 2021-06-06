List<num> tribonacci(List<num> signature, int n) {
  // your code here

  List<num> exp = new List();
  if(n == 1) {
     return exp = [signature[0]];
     }
  if(n == 2){
    return exp = [signature[0],signature[1]];
  }
  else if(n == 0){
      return exp=[];
  }
  for( int i= 1 ; signature.length != n; i++){
      var sum = 0.0;
      for(var j = signature.length -1 ; j >= signature.length - 3;j--){
         sum = sum + signature [j];
       }

      signature.add(sum);
  }
  return signature;
}