class CalculatorLogic {
  String calculatorValue = '0';
  int firstValue = 0;
  int secondValue = 0;
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
      firstValue = int.parse(text);
      return calculatorValue;
    } else if (text == '+') {
      print(text);
      calculatorValue += " $text ";
      operation = add;
      return calculatorValue;
    } else if (text == '-') {
      print(text);
      calculatorValue += " $text ";
      operation = subtract;
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
      firstValue = int.parse(text);
      return calculatorValue;
    } else if (secondValue == 0) {
      print(text);
      calculatorValue += " $text";
      secondValue = int.parse(text);
      return calculatorValue;
    } else {
      print("에러");
      return calculatorValue;
    }
  }
}

int add(int x, int y) => x + y;

int subtract(int x, int y) => x - y;

typedef Operation = int Function(int x, int y);
