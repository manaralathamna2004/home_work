import 'dart:io';

void main() {
  // Prompt user for input
  print("Enter a number:");
  String? input = stdin.readLineSync();

  // Validate input and convert to double
  if (input != null && input.isNotEmpty) {
    double number = double.parse(input);

    // Check if the number is positive, negative, or zero
    if (number > 0) {
      print("The number is positive.");
    } else if (number < 0) {
      print("The number is negative.");
    } else {
      print("The number is zero.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}