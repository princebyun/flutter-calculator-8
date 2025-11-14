class CalculatorLogic {
  String calculatorValue = '0';
  double firstValue = 0;
  double secondValue = 0;
  Operation operation = add;

  String get getCalculatorValue {
    return calculatorValue;
  }

  set setCalculatorValue(String value) {
    calculatorValue += value;
  }

  String calculatorValueInput(String text) {
    if (calculatorValue.contains("=")) {
      secondValue = 0;
      calculatorValue = text;
      firstValue = double.parse(text);
      return calculatorValue;
    } else if (text == '+') {
      print(text);
      calculatorValue += " $text";
      operation = add;
      return calculatorValue;
    } else if (text == '-') {
      print(text);
      calculatorValue += " $text";
      operation = subtract;
      return calculatorValue;
    } else if (text == '/') {
      print(text);
      calculatorValue += " $text";
      operation = divide;
      return calculatorValue;
    } else if (text == '*') {
      print(text);
      calculatorValue += " $text";
      operation = multiply;
      return calculatorValue;
    } else if (text == '=') {
      print(text);
      calculatorValue +=
          (' = ' + operation(firstValue, secondValue).toString());
      return calculatorValue;
    } else if (text == 'C') {
      print(text);
      calculatorValue = '0';
      firstValue = 0;
      secondValue = 0;
      return calculatorValue;
    } else if (firstValue == 0) {
      print(text);
      calculatorValue = text;
      firstValue = double.parse(text);
      return calculatorValue;
    } else if (secondValue == 0) {
      print(text);
      calculatorValue += " $text";
      secondValue = double.parse(text);
      return calculatorValue;
    } else {
      print("에러");
      calculatorValue = "에러";
      return calculatorValue;
    }
  }
}

double add(double x, double y) => x + y;

double subtract(double x, double y) => x - y;

double divide(double x, double y) => x / y;

double multiply(double x, double y) => x * y;

typedef Operation = double Function(double x, double y);
