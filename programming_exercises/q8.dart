int sumList(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void main() {
  print(sumList([1, 2, 3, 4, 5])); // 15
  print(sumList([]));              // 0
  print(sumList([10, -2, 7]));     // 15
}