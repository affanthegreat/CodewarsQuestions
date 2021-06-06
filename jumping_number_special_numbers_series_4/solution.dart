String jumpingNumber(n) {
  // your code here
  List<int> aux = <int>[];
  while(n.toInt() != 0){
      var bit = n % 10;
      n = n / 10;
      aux.add(bit.toInt());
  }
  aux.sort();
  bool isJumping = false;
  print(aux);
  List<bool> truthholder = <bool>[];
  for( var i = 0 ; i < aux.length-1 ; i++) {
  if(aux[i] != aux[i+1]){
      isJumping = (aux[i] - aux [i +1] == -1)?true : false;
      truthholder.add(isJumping);
    }
    else isJumping = true;
     truthholder.add(isJumping);
    
  }
  bool real = true;
  for(var o = 0; o < truthholder.length ; o++){
    if(truthholder[o] == false){
          real = false;
    }
  }
  return real?"Jumping!!" : "Not!!";
}