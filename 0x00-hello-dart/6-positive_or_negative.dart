void main(List<String> args) {
  final int n = int.parse(args[0]);
  print(n > 0
      ? '${n} is positive'
      : n < 0
          ? '${n} is negative'
          : '${n} is zero');
}
