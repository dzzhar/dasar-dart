int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  print('Faktorial dari 5 adalah: ${factorial(5)}');
}
