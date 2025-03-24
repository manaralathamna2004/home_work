List<int> findPrimesInRange(int start, int end) {
  List<int> primes = [];

  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  for (int num = start; num <= end; num++) {
    if (isPrime(num)) {
      primes.add(num);
    }
  }

  return primes;
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  print(findPrimesInRange(10, 30)); // [11, 13, 17, 19, 23, 29]
  print(findPrimesInRange(30, 10)); // [11, 13, 17, 19, 23, 29]
  print(findPrimesInRange(1, 5));   // [2, 3, 5]
}