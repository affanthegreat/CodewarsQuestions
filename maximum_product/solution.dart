int adjacentElementsProduct(array) {
  // your code here
  int maxValue = -110;
  if(array.length >2){
    for(var i=0; i < array.length -1 ; i++){
      if(maxValue < array[i]* array[i+1]){
          maxValue = array[i] * array[i+1];
      }
    }
  }
  else{
    return array[0] * array[1];
  }
  return maxValue;
}