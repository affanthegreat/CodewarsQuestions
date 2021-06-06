String longest(String a, String b) {
  var x = (a+b).split("").toSet().toList();
  x.sort();
  return x.join("");

}