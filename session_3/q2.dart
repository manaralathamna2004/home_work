import 'dart:io';

// Grocery List
List<String> groceryList = [];

// Function to add an item with optional quantity
void addItem(String item, {int quantity = 1}) {
  for (int i = 0; i < quantity; i++) {
    groceryList.add(item);
  }
  print("'$item' added $quantity times.");
}

// Function to remove an item (handles null and missing values)
void removeItem(String item) {
  if (groceryList.contains(item)) {
    groceryList.remove(item);
    print("'$item' removed.");
  } else {
    print("Item '$item' not found in the list.");
  }
}

// Function to display items (handles empty list)
void displayItems() {
  if (groceryList.isEmpty) {
    print("The grocery list is empty.");
  } else {
    print("Grocery List:");
    for (var item in groceryList) {
      print("- $item");
    }
  }
}

void main() {
  while (true) {
    print("\nChoose an option:");
    print("1. Add item");
    print("2. Remove item");
    print("3. Display items");
    print("4. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter item name:");
        String? item = stdin.readLineSync();
        if (item != null && item.isNotEmpty) {
          print("Enter quantity (or press Enter for default 1):");
          String? qtyInput = stdin.readLineSync();
          int quantity = (qtyInput != null && qtyInput.isNotEmpty) ? int.parse(qtyInput) : 1;
          addItem(item, quantity: quantity);
        } else {
          print("Invalid item name.");
        }
        break;

      case '2':
        print("Enter item name to remove:");
        String? item = stdin.readLineSync();
        if (item != null && item.isNotEmpty) {
          removeItem(item);
        } else {
          print("Invalid item name.");
        }
        break;

      case '3':
        displayItems();
        break;

      case '4':
        print("Exiting program.");
        return;

      default:
        print("Invalid choice. Try again.");
    }
  }
}