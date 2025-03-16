import 'dart:io';

// Task class to represent a to-do item
class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, [this.isCompleted = false]);

  void markCompleted() {
    isCompleted = true;
  }

  @override
  String toString() {
    return "[${isCompleted ? '✔' : '✗'}] $description - Due: $dueDate";
  }
}

// List to store tasks
List<Task> toDoList = [];

// Function to add a task
void addTask(String description, String dueDate) {
  toDoList.add(Task(description, dueDate));
  print("Task added successfully.");
}

// Function to remove a task by index
void removeTask(int index) {
  if (index >= 0 && index < toDoList.length) {
    print("Task '${toDoList[index].description}' removed.");
    toDoList.removeAt(index);
  } else {
    print("Invalid task index.");
  }
}

// Function to update a task's completion status
void markTaskCompleted(int index) {
  if (index >= 0 && index < toDoList.length) {
    toDoList[index].markCompleted();
    print("Task marked as completed.");
  } else {
    print("Invalid task index.");
  }
}

// Function to display all tasks
void displayTasks() {
  if (toDoList.isEmpty) {
    print("No tasks available.");
  } else {
    print("To-Do List:");
    toDoList.asMap().forEach((index, task) {
      print("$index: $task");
    });
  }
}

void main() {
  while (true) {
    print("\nChoose an option:");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. Mark Task as Completed");
    print("4. View Tasks");
    print("5. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter task description:");
        String? desc = stdin.readLineSync();
        print("Enter due date (YYYY-MM-DD):");
        String? due = stdin.readLineSync();

        if (desc != null && desc.isNotEmpty && due != null && due.isNotEmpty) {
          addTask(desc, due);
        } else {
          print("Invalid input.");
        }
        break;

      case '2':
        displayTasks();
        print("Enter task index to remove:");
        String? indexInput = stdin.readLineSync();
        if (indexInput != null && indexInput.isNotEmpty) {
          removeTask(int.parse(indexInput));
        }
        break;

      case '3':
        displayTasks();
        print("Enter task index to mark as completed:");
        String? indexInput = stdin.readLineSync();
        if (indexInput != null && indexInput.isNotEmpty) {
          markTaskCompleted(int.parse(indexInput));
        }
        break;

      case '4':
        displayTasks();
        break;

      case '5':
        print("Exiting program.");
        return;

      default:
        print("Invalid choice. Try again.");
    }
  }
}