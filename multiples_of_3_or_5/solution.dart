int solution(int n) {
  // your code here
  var z = [];
  for(int i=0;i<n;i++){
    if(i%3 ==0 || i%5 == 0) z.add(i);
  }
  return z.toSet().toList().fold(0,(x,y)=>x+y);
}