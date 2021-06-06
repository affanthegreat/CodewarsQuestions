String solve(String s) {
  // your code here
   var strList = s.split('');
  var tempList  = s.split('');
  int lowercasecount=0 , uppercasecount=0;
  List<String> updatedString = new List();
  for(var i =0 ; i< s.length ; i++){
        tempList[i] = tempList[i].toUpperCase();
        if(tempList[i] == strList[i]){
            uppercasecount++;
        }
         tempList[i] = tempList[i].toLowerCase();
        if(tempList[i] == strList[i]){
            lowercasecount++;
        }
  }
  if(uppercasecount > lowercasecount){
     return s.toUpperCase();
  }
  else if(lowercasecount > uppercasecount || lowercasecount == uppercasecount){
      return s.toLowerCase();
  }
 
}