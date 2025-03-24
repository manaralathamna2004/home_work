String reverseString(String input) {
  return input.split('').reversed.join();
}

void main() {
  print(reverseString('hello')); // olleh
  print(reverseString('Dart'));  // traD
  print(reverseString(''));      // 
}