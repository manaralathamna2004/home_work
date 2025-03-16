import 'dart:io';

// Function for addition with optional extra numbers
double add(double a, double b, [double? extra]) {
  return extra != null ? a + b + extra : a + b;
}

// Function for subtraction
double subtract(double a, double b) => a - b;

// Function for multiplication
double multiply(double a, double b) => a * b;

// Function for division (handling division by zero)
double divide(double a, double b) => b != 0 ? a / b : double.nan;

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter an optional third number (or press Enter to skip):");
  String? extraInput = stdin.readLineSync();
  double? extraNum = extraInput != null && extraInput.isNotEmpty ? double.parse(extraInput) : null;

  print("Addition: ${add(num1, num2, extraNum)}");
  print("Subtraction: ${subtract(num1, num2)}");
  print("Multiplication: ${multiply(num1, num2)}");
  print("Division: ${divide(num1, num2)}");
}