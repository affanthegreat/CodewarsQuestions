function firstNonRepeatingLetter(string) {
  let temp = string;
  string = string.toLowerCase();
  for (var i = 0; i < string.length; i++) {
    var c = string.charAt(i);
    if (string.indexOf(c) == i && string.indexOf(c, i + 1) == -1) {
      return temp.charAt(i);
    }
  }
  return '';
}