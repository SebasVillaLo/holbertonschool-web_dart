String longestUniqueSubstring(String str) {
  var maxLength = 0, start = 0, charIndex = {};
  str.split('').asMap().forEach((i, char) {
    start = charIndex.containsKey(char) && charIndex[char] >= start ? charIndex[char] + 1 : start;
    charIndex[char] = i;
    maxLength = maxLength > i - start + 1 ? maxLength : i - start + 1;
  });
  return str.substring(start, start + maxLength);
}
