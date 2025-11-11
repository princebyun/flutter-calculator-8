void main() {
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  BoyGroup bts = BoyGroup('bts', 7);
  bts.sayName();
  bts.sayMembersCount();
}

class Idol {
  String name;
  int membersCount;

  Idol({required this.name, required this.membersCount});

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('저는 ${this.membersCount}명의 아이돌입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int memberCount)
    : super(name: name, membersCount: memberCount);
}
