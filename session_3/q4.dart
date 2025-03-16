import 'dart:io';

// Weather data stored in a Map
Map<String, Map<String, dynamic>> weatherData = {
  "New York": {"temperature": 20, "humidity": 60, "condition": "Cloudy"},
  "London": {"temperature": 15, "humidity": 75, "condition": "Rainy"},
  "Tokyo": {"temperature": 25, "humidity": 50, "condition": "Sunny"},
  "Paris": {"temperature": 18, "humidity": 65, "condition": "Windy"},
};

// Function to get weather details of a specific city
void getWeather(String city) {
  if (weatherData.containsKey(city)) {
    var data = weatherData[city]!;
    print("\nWeather in $city:");
    print("- Temperature: ${data['temperature']}°C");
    print("- Humidity: ${data['humidity']}%");
    print("- Condition: ${data['condition']}");
  } else {
    print("No weather data found for '$city'.");
  }
}

// Function to add a new city's weather data
void addCityWeather(String city, int temperature, int humidity, String condition) {
  weatherData[city] = {
    "temperature": temperature,
    "humidity": humidity,
    "condition": condition
  };
  print("Weather data for '$city' added successfully.");
}

// Function to display all available cities
void displayCities() {
  print("\nAvailable cities with weather data:");
  weatherData.keys.forEach((city) => print("- $city"));
}

void main() {
  while (true) {
    print("\nChoose an option:");
    print("1. Get weather by city");
    print("2. Add new city weather data");
    print("3. Display available cities");
    print("4. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter city name:");
        String? city = stdin.readLineSync();
        if (city != null && city.isNotEmpty) {
          getWeather(city);
        } else {
          print("Invalid input.");
        }
        break;

      case '2':
        print("Enter city name:");
        String? city = stdin.readLineSync();
        print("Enter temperature (°C):");
        String? tempInput = stdin.readLineSync();
        print("Enter humidity (%):");
        String? humidityInput = stdin.readLineSync();
        print("Enter condition (e.g., Sunny, Rainy):");
        String? condition = stdin.readLineSync();

        if (city != null && city.isNotEmpty &&
            tempInput != null && tempInput.isNotEmpty &&
            humidityInput != null && humidityInput.isNotEmpty &&
            condition != null && condition.isNotEmpty) {
          addCityWeather(city, int.parse(tempInput), int.parse(humidityInput), condition);
        } else {
          print("Invalid input.");
        }
        break;

      case '3':
        displayCities();
        break;

      case '4':
        print("Exiting program.");
        return;

      default:
        print("Invalid choice. Try again.");
    }
  }
}