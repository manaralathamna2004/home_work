dynamic convertTemperature(double value, String unit) {
  if (unit == 'C') {
    double fahrenheit = (value * 9 / 5) + 32;
    return '$fahrenheit °F';
  } else if (unit == 'F') {
    double celsius = (value - 32) * 5 / 9;
    return '$celsius °C';
  } else {
    return 'Error: Invalid unit. Use "C" or "F".';
  }
}

void main() {
  print(convertTemperature(0, 'C'));
  print(convertTemperature(100, 'C'));
  print(convertTemperature(32, 'F'));
  print(convertTemperature(212, 'F'));
  print(convertTemperature(25, 'X'));
}