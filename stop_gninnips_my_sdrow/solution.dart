String spinWords(String str) {
  // your code here
  var y = [];
  str.split(" ").forEach((item){
    if(item.length>4) 
      item = item.split('').reversed.join();
    y.add(item);
  });
  return y.join(" ");
}