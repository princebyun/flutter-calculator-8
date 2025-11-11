void main() {
  List<String> blackPink = ['로제', '지수'];
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  Set blackPinkSet2 = Set.from(blackPink);
  print(blackPinkSet2.toList());

  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  });

  print(blackPink);
  print(newBlackPink);

  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');
  print(newBlackPink2);

  String number = '13579';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);

  Map<String, String> harryPotter = {
    'harry1': '해리1',
    'harry2': '해리2',
    'harry3': '해리3',
  };
  final result = harryPotter.map(
    (key, value) => MapEntry('harry $key', '해리 $value'),
  );
  print(result);

  Set blackPinkSet = {'로제', '지수', '제니'};
  final newSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();
  print(newSet);

  List<Map<String, String>> people = [
    {'name': 'man1', 'group': 'girl'},
    {'name': 'man2', 'group': 'girl'},
    {'name': 'man3', 'group': 'man'},
    {'name': 'man4', 'group': 'man'},
  ];

  final result2 = people.where((x) => x['group'] == 'man').toList();
  print(result2);

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final result3 = numbers.reduce((prev, next) {
    print('prev: $prev, next: $next');
    return prev + next;
  });

  print(result3);

  List<String> words = ['안녕하세여 ', '저는 ', '변형균', '입니다.'];

  final result4 = words.reduce((prev, next) => prev + next);
  print(result4);
}
