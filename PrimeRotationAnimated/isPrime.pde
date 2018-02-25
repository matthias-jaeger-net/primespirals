boolean isPrime(int num) {
  boolean bool = true;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      bool = false;
      break;
    }
  }
  return bool;
}