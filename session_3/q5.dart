// Defining a Car class
class Car {
  // Properties
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Method to display car details
  void displayInfo() {
    print("Car: $brand $model - Year: $year");
  }

  // Method to check if the car is old
  bool isOld() {
    return (DateTime.now().year - year) > 10;
  }
}

void main() {
  // Creating an instance of Car
  Car myCar = Car("Toyota", "Corolla", 2015);

  // Accessing properties using dot operator
  print("Brand: ${myCar.brand}");
  print("Model: ${myCar.model}");
  print("Year: ${myCar.year}");

  // Calling a method using dot operator
  myCar.displayInfo();

  // Checking if the car is old
  print("Is the car old? ${myCar.isOld() ? 'Yes' : 'No'}");
}