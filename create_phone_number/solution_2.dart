String createPhoneNumber(List numbers) {
  // Your code goes here
  return ("(${numbers.getRange(0,3).join("")}) ${numbers.getRange(3,6).join("")}-${numbers.getRange(6,10).join("")}" );
} 