int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.isEmpty || words[0] == '' ? 0 : words.length;
}

void main() {
  print(countWords("Hello world")); // 2
  print(countWords("   Dart is   awesome   ")); // 3
  print(countWords("")); // 0
  print(countWords("    ")); // 0
}