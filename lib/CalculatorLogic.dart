class CalculatorLogic {
  String calculatorValue = '0';
  List<double> userInputList = [];
  Operation operation = add;

  String get getCalculatorValue {
    return calculatorValue;
  }

  set setCalculatorValue(String value) {
    calculatorValue += value;
  }

  String calculatorValueInput(String text) {
    if (calculatorValue.contains("=")) {
      userInputList = [];
      calculatorValue = text;
      userInputList.add(double.parse(text));
      return calculatorValue;
    } else if (['*', '/', '+', '-'].contains(text)) {
      return getOperation(text);
    } else if (['C', '='].contains(text)) {
      return getCalculatorOption(text);
    } else if (userInputList.length < 3) {
      return inputValueSave(text);
    } else {
      print("에러");
      calculatorValue = "에러";
      return calculatorValue;
    }
  }

  String inputValueSave(String text) {
    if (userInputList.length == 0) {
      calculatorValue = "$text ";
    }
    if (userInputList.length == 1) {
      calculatorValue += "$text ";
    }
    userInputList.add(double.parse(text));
    return calculatorValue;
  }

  String getCalculatorOption(String text) {
    if (text == '=') {
      calculatorValue +=
          (' = ' + operation(userInputList[0], userInputList[1]).toString());
    }
    if (text == 'C') {
      calculatorValue = '0';
      userInputList = [];
    }

    return calculatorValue;
  }

  String getOperation(String text) {
    if (text == '+') {
      calculatorValue += "$text ";
      operation = add;
    }
    if (text == '-') {
      calculatorValue += "$text ";
      operation = subtract;
    }
    if (text == '/') {
      calculatorValue += "$text ";
      operation = divide;
    }
    if (text == '*') {
      calculatorValue += "$text ";
      operation = multiply;
    }
    return calculatorValue;
  }
}

double add(double x, double y) => x + y;

double subtract(double x, double y) => x - y;

double divide(double x, double y) => x / y;

double multiply(double x, double y) => x * y;

typedef Operation = double Function(double x, double y);
