dynamic calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        return 'Error: Division by zero';
      } else {
        return num1 / num2;
      }
    default:
      return 'Error: Invalid operator';
  }
}