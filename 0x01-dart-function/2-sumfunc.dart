String showFunc(int a, int b) {
  int add(int a, int b) {
    return a + b;
  }

  int sub(int a, int b) {
    return a - b;
  }

  return 'Add $a + $b = ${add(a, b)}\nSub $a - $b = ${sub(a, b)}';
}
