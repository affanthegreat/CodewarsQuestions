int duplicateCount(String text){
  int counter = 0;
  String lowerText = text.toLowerCase();
  while (lowerText.length > 0) {
    if (lowerText[0].allMatches(lowerText).length > 1) {
      counter ++;
    }
    lowerText = lowerText.replaceAll(lowerText[0], '');
  }
  return counter;
}