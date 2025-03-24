bool isLeapYear(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(isLeapYear(2020)); // true
  print(isLeapYear(1900)); // false
  print(isLeapYear(2000)); // true
  print(isLeapYear(2023)); // false
}