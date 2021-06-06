List<String> wave(String str) {
  // your code here
  var stringArr = str.split('');
  List<String> res = new List();
  for(var i = 0 ;i < stringArr.length;i++){
      if(stringArr[i] != " "){
      for(var j = 0 ; j<stringArr.length ; j++){
          if(i == j){
  stringArr[i] = stringArr[i].toUpperCase();
          }
          else{
            stringArr[j] = stringArr[j].toLowerCase();
          }
      }
       String tempStr = stringArr.join();
       res.add(tempStr);    
     }
     }
     return res;
}