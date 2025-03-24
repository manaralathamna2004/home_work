class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() => salary;
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
      : super(name, id, salary);

  @override
  double calculateSalary() => salary + bonus;
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
      : super(name, id, 0);

  @override
  double calculateSalary() => hoursWorked * hourlyRate;
}

void main() {
  var fullTimer = FullTimeEmployee("Ali", 101, 3000, 500);
  var partTimer = PartTimeEmployee("Sara", 102, 40, 25);

  print("${fullTimer.name}'s salary: ${fullTimer.calculateSalary()}"); // 3500
  print("${partTimer.name}'s salary: ${partTimer.calculateSalary()}"); // 1000
}