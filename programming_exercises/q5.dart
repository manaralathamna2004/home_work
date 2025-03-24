String findLongestWord(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  String longestWord = '';

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}

void main() {
  print(findLongestWord("The quick brown fox jumps over the lazy dog")); // jumps
  print(findLongestWord("Dart is fun and powerful")); // powerful
  print(findLongestWord("I love coding")); // coding
}