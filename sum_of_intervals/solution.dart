  int sumOfIntervals(List<List<int>> intervals) {
    var o = [];
    int sum = 0;
    for(var list in intervals){
    for(int j = list[0];j<list[1];j++) o.add(j);
    }
    var x = o.toSet().toList();
    return x.length;
  }