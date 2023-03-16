String longestUniqueSubstring(String str) {
  Map<String, int> charIndexMap = {};
  int maxLength = 0;
  int start = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (charIndexMap.containsKey(char) && charIndexMap[char]! >= start) {
      start = charIndexMap[char]! + 1;
    }
    charIndexMap[char] = i;
    int currentLength = i - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
    }
  }

  return str.substring(start, start + maxLength);
}
