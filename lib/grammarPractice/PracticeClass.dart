void main() {
  _Idol blackPink = _Idol('블랙핑크', [
    //특이하게 new를 붙이지 않아도 된다.
    '지수',
    '제니',
    '리사',
    '로제',
  ]);

  _Idol bts = _Idol('BTS', ['진', '슈가', '지민', '뷔']);

  print(blackPink.firstMender); //getter 사용법
  print(bts.firstMender);

  blackPink.firstMender = "변형균"; //setter 사용법
  bts.firstMender = '아이언맨';

  print(blackPink.firstMender);
  print(bts.firstMender);
}

class _Idol {
  //private 속성을 붙이고 싶으면 _를 붙이면 된다.
  String name;
  List<String> members;

  /*Idol(String name, List<String> members) //생성자 생성할때 자바와 다른점1
    : this.name = name,
      this.members = members;*/

  _Idol(this.name, this.members); //생성자 생성할때 자바와 다른점2 --> 이게 진짜 신기하다.

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  //getter
  String get firstMender {
    return this.members[0];
  }

  //setter : 파라미터는 꼭 하나만 넣어야 한다.
  set firstMender(String firstMender) {
    this.members[0] = firstMender;
  }
}
