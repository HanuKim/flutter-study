// // Future
// // Future 클래스는 미래에 받아올 값을 의미함. List나 Set처럼 제네릭으로 어떤 미래의 값을 받아올지 정할 수 있음
// // Future<String> name;
// // Future<int> number;
// // Future<bool> isOpened;

// void main() {
//   // 첫 번째 addNumber 함수가 끝나고 두 번째 addNumber 함수가 실행됐으면 한다면, 여기에 async, await를 설정하면 됨 
//   addNumber(1, 1);
//   addNumber(2, 2);  
// }


// // void addNumber(int a, int b) async {
// //   print('${a} + ${b} 계산 시작');

// // // Future.delayed()를 사용하면 일정 시간 후에 콜백 함수를 실행할 수 있음 
// //   Future.delayed(Duration(seconds: 2), () {
// //     print('${a} + ${b} = ${a + b}');
// //   });
// //   print('${a} + ${b} 계산 완료');
// // }

// // async, await
// // async는 함수를 비동기적으로 실행하고, await는 비동기 함수가 끝날 때까지 기다리는 키워드
// Future<void> addNumber(int a, int b) async {
//   print('${a} + ${b} 계산 시작');
//   await Future.delayed(Duration(seconds: 2), () {
//     print('${a} + ${b} = ${a + b}');
//   });
//   print('${a} + ${b} 계산 완료');
// }

// 결괏값 반환받기 
void main() async {
  final result = await addNumber(1, 1);
  print(result);
 
 final result2 = await addNumber(2, 2);
 print(result2);
}

Future<int> addNumber(int a, int b) async {
  print('${a} + ${b} 계산 시작');
  await Future.delayed(Duration(seconds: 2), () {
    print('${a} + ${b} = ${a + b}');
  });
  print('${a} + ${b} 계산 완료');
  return a + b;
}