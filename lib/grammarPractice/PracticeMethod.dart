void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());

  Employee man = Employee('홍길동');
  Employee girl = Employee('김길동');

  man.name = "변형균";
  man.printNameAndBuilding();
  girl.printNameAndBuilding();

  Employee.building = '우리집';
  man.printNameAndBuilding();
  girl.printNameAndBuilding();

  BoyGroup bts = BoyGroup('방탄소년단');
  GirlGroup bts2 = GirlGroup('방탄소년단2');
}

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  @override
  int calculate() {
    return super.calculate() * 2;
  }
}

class Employee {
  static String? building;
  String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('제이름은  $name입니다.${building}에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 ${building}에서 근무하고 있습니다.');
  }
}

abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName() {
    print('저는 ${name}입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('저는 ${name}입니다.');
  }
}
