List<int> partsSums(List<int> ls) {
  var result = new List<int>();
  result.add(ls.fold(0,(a,b) => a+b));
  var sum = result[0];
  int i =0;
  while(i<ls.length){
    sum = sum - ls[i];
    result.add(sum);
    i++;
  }
  return result;
}