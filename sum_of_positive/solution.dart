int positiveSum(List<int> arr) {
  // your code here
  var sum = 0;
  for (var i in arr){
    if(i>0) sum = sum + i;
  }
  return sum;
}