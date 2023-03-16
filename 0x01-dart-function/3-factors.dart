int fact(int f) {
  return f <= 0 ? 0 : f == 1 ? f : f * fact(f - 1);
}
