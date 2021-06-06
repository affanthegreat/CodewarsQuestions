bool validParentheses(String x) { 
  while(x.contains("()")){
    x = x.replaceFirst("()","");
  }
  if(x.isEmpty){
    return true;
  }
  else{
    return false;
  }
  
}