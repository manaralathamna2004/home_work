import 'dart:io';

void main() {
  // Task 1: Create a student map
  Map<String, dynamic> student = {
    "name": "John Doe",
    "age": 20,
    "grade": 88.5
  };

  // Printing initial map
  print("\nInitial Student Details:");
  print(student);

  // Updating an entry
  student["age"] = 21;
  print("\nAfter Updating Age:");
  print(student);

  // Adding a new entry
  student["major"] = "Computer Science";
  print("\nAfter Adding Major:");
  print(student);

  // Removing an entry
  student.remove("grade");
  print("\nAfter Removing Grade:");
  print(student);

  // Task 2: Iterating over the map
  print("\nIterating Over Student Details:");
  student.forEach((key, value) {
    print("$key: $value");
  });
}