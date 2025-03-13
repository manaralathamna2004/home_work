void main() {
  int? score;

  if (score != null) {
    print(score);
  } else {
    print('No score');
  }

  score = 85;

  if (score != null) {
    print(score);
  } else {
    print('No score');
  }
}