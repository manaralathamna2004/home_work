
Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}

void main() {
  List<String> names = ["Manar", "Omar", "Saly", "Saly", "Mohra", "Omar", "Sozy"];

  Set<String> uniqueSet = uniqueNames(names);
  print("Unique names: $uniqueSet");
}