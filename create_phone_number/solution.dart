String createPhoneNumber(List numbers) {
  // Your code goes here
  return "(" + numbers.getRange(0,3).join("").toString() + ") " + numbers.getRange(3,6).join("").toString()
        +"-" +  numbers.getRange(6,10).join("").toString();
}