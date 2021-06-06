int find(List integers) {
  bool isEven;
  
  if((integers[0]%2 ==0) && (integers[1]%2 == 0))
       isEven= true;
  
  else if((integers[0]%2)!= (integers[1]%2)){
     if(integers[0]%2 == integers[2]%2)
        return integers[1];
    else return integers[0];
    }
  else isEven =false;

  int i =0;
  while (i !=integers.length){
    if((integers[i]%2 == 0) != isEven) return  integers[i];
    i++;
  }
  
  }