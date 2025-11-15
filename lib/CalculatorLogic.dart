class CalculatorLogic {
  String calculatorValue = '0';
  List<double> userInputList = [];
  List<String> operationList = [];
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
    } else {
      return inputValueSave(text);
    } /*else {
      print("에러");
      calculatorValue = "에러";
      return calculatorValue;
    }*/
  }

  String inputValueSave(String text) {
    if (userInputList.length == 0) {
      calculatorValue = "$text ";
    } else {
      calculatorValue += "$text ";
    }
    userInputList.add(double.parse(text));
    return calculatorValue;
  }

  String getCalculatorOption(String text) {
    if (text == '=') {
      outerLoop:
      while (operationList.length > 0) {
        for (int i = 0; i < operationList.length; i++) {
          if (['*', '/'].contains(operationList[i])) {
            if (operationList[i] == '*') {
              var val1 = userInputList[i];
              var val2 = userInputList[i + 1];
              userInputList[i] = val1 * val2;
              userInputList.removeAt(i + 1);
              operationList.removeAt(i);
              continue outerLoop;
            }
            if (operationList[i] == '/') {
              var val1 = userInputList[i];
              var val2 = userInputList[i + 1];
              userInputList[i] = val1 / val2;
              userInputList.removeAt(i + 1);
              operationList.removeAt(i);
              continue outerLoop;
            }
          }
        }

        for (int i = 0; i < operationList.length; i++) {
          if (['+', '-'].contains(operationList[i])) {
            if (operationList[i] == '+') {
              var val1 = userInputList[i];
              var val2 = userInputList[i + 1];
              userInputList[i] = val1 + val2;
              userInputList.removeAt(i + 1);
              operationList.removeAt(i);
              continue outerLoop;
            }
            if (operationList[i] == '-') {
              var val1 = userInputList[i];
              var val2 = userInputList[i + 1];
              userInputList[i] = val1 - val2;
              userInputList.removeAt(i + 1);
              operationList.removeAt(i);
              continue outerLoop;
            }
          }
        }
      }
      calculatorValue += (' = ' + userInputList[0].toString());
    }
    if (text == 'C') {
      calculatorValue = '0';
      userInputList = [];
      operationList = [];
    }

    return calculatorValue;
  }

  String getOperation(String text) {
    if (text == '+') {
      calculatorValue += "$text ";
      operationList.add(text);
      //operation = add;
    }
    if (text == '-') {
      calculatorValue += "$text ";
      operationList.add(text);
      //operation = subtract;
    }
    if (text == '/') {
      calculatorValue += "$text ";
      operationList.add(text);
      //operation = divide;
    }
    if (text == '*') {
      calculatorValue += "$text ";
      operationList.add(text);
      //operation = multiply;
    }
    return calculatorValue;
  }
}

double add(double x, double y) => x + y;

double subtract(double x, double y) => x - y;

double divide(double x, double y) => x / y;

double multiply(double x, double y) => x * y;

typedef Operation = double Function(double x, double y);
