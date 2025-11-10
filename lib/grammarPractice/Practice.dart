void main() {
  //print("헬로 월드");
  var name = "변형균";
  print(name);

  name = "이름바꾸기";
  print(name);

  double number2 = 10.5;
  double number3 = 11.5;

  print(number2 + number3);
  print(number2 - number3);
  print(number2 * number3);
  print(number2 / number3);

  bool isTrue = true;
  bool isFalse = false;

  print(isTrue);
  print(isFalse);

  dynamic val = "변형균";
  print(val);
  val = 2;
  print(val);

  String? test1 = "test";
  print(test1);

  test1 = null;
  print(test1);

  final test2 = "변형균";
  print(test2);

  const test3 = "홍길동";
  print(test3);

  DateTime now = DateTime.now();
  print(now);

  int testNumber = 1;
  print(testNumber is int);
  print(testNumber is! int);
  print(testNumber is! String);
  print(testNumber is String);

  testMethod(10); //optional 파라미터
  testMethod2(x: 10, y: 20, z: 30); //named 파라미터
  int resultVal = testMethod3(10, 20); //애로우 리턴
  print(resultVal);

  Operation operation = add;
  print(operation(10, 20, 30));

  operation = subtract;
  print(operation(10, 20, 30));
}

//optional 파라미터
testMethod(int x, [int y = 20, int z = 30]) {
  int sum = x + y + z;
  print(sum);
}

//named 파라미터
testMethod2({required int x, required int y, required int z}) {
  int sum = x + y + z;
  print(sum);
}

//애로우 리턴
int testMethod3(int x, int y) => x + y;

//오퍼레이션
typedef Operation = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;

int subtract(int x, int y, int z) => x - y - z;
