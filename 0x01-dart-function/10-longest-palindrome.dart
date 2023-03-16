String longestPalindrome(String s) {
  if (s.isEmpty || s.length < 3) return 'none';

  return s
      .split('')
      .expand((char) => [
            for (int i = s.indexOf(char);
                i < s.length;
                i = s.indexOf(char, i + 1))
              s.substring(s.indexOf(char), i + 1)
          ])
      .where(isPalindrome)
      .fold('', (a, b) => a.length > b.length ? a : b);
}

bool isPalindrome(String s) => s == s.split('').reversed.join();
