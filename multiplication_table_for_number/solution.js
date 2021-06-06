function multiTable(number) {
  // good luck
  var i = 0;
  var string = '';
  for(i =1; i < 11; i++){
    string = string + i + " * " + number + " = " + (i * number) + "\n";
  }
  return string.slice(0,string.length - 1);
}