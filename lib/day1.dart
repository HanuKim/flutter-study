
void main() {
  // Idol newjeans = Idol();
  // newjeans.sayName();
  Idol newjeans = Idol('newjeans');
  newjeans.sayName();
}

// class Idol {
//   // 클래스에 종속되는 변수
//   String name = "newjeans";
//
//   // 클래스에 종속되는 함수 = 메서드
//  void sayName() {
//    // 클래스 내부 속성을 지칭할 때는 this 키워드 사용
//    // 함수 내부에 같은 이름의 변수가 없으면 생략 가능
// print('i am ${this.name}.');
// }
// }

// 생성자
class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;

  // 생성자 선언
// 클래스와 같은 이름이어야 함
// 함수의 매개변수를 선언하는 것처럼 매개변수를 지정
Idol(String name) : this.name = name;
// 아래와 같이 축약할 수 있음
  // Idol(this.name);

void sayName() {
  print('i am ${this.name}.');
}
}


