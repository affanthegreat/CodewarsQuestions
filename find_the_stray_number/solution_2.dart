int stray(numbers) {
  var x=0,y=0;
  var sett = numbers.toSet().toList();
  numbers.forEach((item){
    if(item == sett[0]) x++;
    else y++;
  });
  return (x>y)?sett[1]:sett[0]; // your code here
}