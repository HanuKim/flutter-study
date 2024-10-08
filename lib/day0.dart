
void main() {
  print('hello world');
  List<String> blackPink = ["지수", "리사", "제니", "로제"];

  blackPink[2] = "리사2";
  print(blackPink);

  final newList = blackPink.where((name) => name == "리사2" || name == "제니");
  print(newList);
  print(newList.toList());

  var blackPink2 = newList.toList();
  blackPink2.add("제니");
  blackPink2.add("로제");
  blackPink2.add("지수");
  print(blackPink2);

  final newList2 = blackPink2.where((name) =>
  name == "제니" || name == "지수" || name == "로제");
  var blackPinkList = newList2.toList();
  blackPinkList.add("리사");
  print(blackPinkList);

  final newBlackPink = blackPinkList.map(
      (name) => 'blackpink ${name}'
  );
  print(newBlackPink.toList());

  final allMembers = blackPinkList.reduce((value, element) => value + ',' + element);
  print(allMembers);

  final allMembers2 = blackPinkList.fold(0, (value, element) => value + element.length);
  print(allMembers2);

  Map<String, String> dictionary = {
    'Harry' : '해리',
    'Ron' : '론',
    'Hermione' : '헤르미온느',
    'Sam' : '론'
  };

  print(dictionary.keys);
  print(dictionary.values);

  Set<String> blackPink3 = {'로제', "지수", "리사", "제니", "로제"};

  print(blackPink3);
  print(blackPink3.contains('로제'));
print(blackPink3.runtimeType);

var newList3 = Set.from(dictionary.values.toList());
print(newList3);

Status status = Status.approved;
print(status);

double number = 2;
number++;

print(number);
number--;
  print(number);

   // type 뒤에 ?를 넣어 줘야 null 값을 지정할 수 있음
  double? number2 = null;

  // ??를 사용하면 null일 때만 값이 저장됨
  number2 ??= 3;
  print(number2);
  number2 ??= 5;
  print(number2);

  // 타입 비교 연산자
  print(number2 is int);
  print(number2 is! int);

  status = Status.rejected;

  switch (status) {
    case Status.approved: print('approved'); break;
    case Status.pending: print('pending'); break;
    case Status.rejected: print('rejected'); break;
    default: print('none');
  }
  print(Status.values);

  List<int> numberList = [4, 5, 6, 7];

  for (int number in numberList) {
    print(number);
  }

  int total = 0;

  // 적어도 한 번 실행 되어야 할 때 do-while 문 사용
  // 사전에 조건을 확인 해야 하는 경우는 그냥 while 문 사용
  do {
    total += 1;
  } while(total < 10);
  print(total);

  print(addTwoNumbers(1, b: 3));

  // typedef
  Operation oper = add;
  oper(1, 2);

  oper = subtract;
  oper(5, 3);

  calculator(8, 2, oper);

  try {
    final String name = "코드팩토리";
    // throw Exception("wrong name");

    print(name);
  } catch(e){
    print(e);
  }
}

enum Status {
  approved, pending, rejected
}

// int addTwoNumbers({
//   required int a,
// required int b
// }) {
//   return a + b;
// }

// int addTwoNumbers({
//   required int a,
// int b = 2
// }) {
//   return a + b;
// }

// 포지셔널 파라미터와 네임드 파라미터를 섞어서 사용할 때는 포지셔널 파라미터가 네임드 파라미터보다 반드시 먼저 위치해야 함
int addTwoNumbers(int a, {
  required int b,
int c = 2
}) {
  return a + b + c;
}


// typedef
typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('result: ${x + y}');
}

void subtract(int x, int y) {
  print('result: ${x - y}');
}

// 다트에서 함수는 일급 객체이므로 함수를 값처럼 사용할 수 있음
void calculator(int x, int y, Operation oper) {
  oper(x, y);
}

