class Person {

  String name;
  int? age;
  bool isStudent;

 
  Person(this.name, [this.age, this.isStudent = false]);


  void displayInfo() {
    print('Name: $name');
    if (age != null) {
      print('Age: $age');
    } else {
      print('Age: Not provided');
    }
    print('Is Student: $isStudent');
  }
}

void main() {
  Person person1 = Person('Manar', 25, true);
  person1.displayInfo();

  print('---');

  
  Person person2 = Person('Ahmed');
  person2.displayInfo();
}