import 'dart:io';

void checkRange(double number, double min, double max) {
  if (number >= min && number <= max) {
    print("The number $number is within the range [$min, $max].");
  } else {
    print("The number $number is out of the range [$min, $max].");
  }
}

void main() {
  // Define range limits
  double minRange = 10.0;
  double maxRange = 50.0;

  // Prompt user for input
  print("Enter a number:");
  String? input = stdin.readLineSync();

  // Validate input and process range check
  if (input != null && input.isNotEmpty) {
    double number = double.parse(input);
    checkRange(number, minRange, maxRange);
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}