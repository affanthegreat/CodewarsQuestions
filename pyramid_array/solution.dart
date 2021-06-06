List<List<int>> pyramid(int n) {
  // your code here
  List<List<int>> toBeReturned = <List<int>>[];
  for(var x = 0 ; x < n ;x++){
    List<int> lr = new List<int>.filled(x+1, 1, growable: true);
    toBeReturned.add(lr);
  }
  return toBeReturned;
}