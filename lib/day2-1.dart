// 네임드 생성자
// 클래스를 생성하는 여러 방법을 명시할 때 사용
class Idol {
  final String name;
  final int memberCount;

  // 생성자
Idol(String name, int memberCount)
  : this.name = name,
  this.memberCount = memberCount;

// 네임드 생성자
Idol.fromMap(Map<String, dynamic> map) : this.name = map['name'],
  this.memberCount = map['memberCount'];

void sayName() {
  print('i am ${this.name}. The number of ${this.name} is ${this.memberCount}.');
}
}

// 프라이빗 변수
// 일반적으로 프라이빗 변수는 클래스 내부에서만 사용하는 변수를 칭하지만 다트에서는 같은 파일에서만 접근 가능한 변수를 의미함
class Color {
  String _colorName;
  Color(this._colorName);
}

// 게터, 세터
// 게터는 값을 가져올 때 사용하고 세터는 값을 지정할 때 사용함
// 가변 변수를 선언해도 직접 값을 가져오거나 지정할 수 있지만 게터와 세터를 사용하면 어떤 값이 노출되고 어떤 형태로 노출될 지 그리고 어떤 변수를 변경 가능하게 할 지 유연하게 정할 수 있습니다
// 최근에는 객체 지향 프로그래밍을 할 때 변수의 값을 불변성(인스턴스화 후 변경할 수 없는) 특성으로 사용하기 때문에 세터는 거의 사용하지 않지만 게터는 종종 사용함
class Color2 {
  String _name = 'black';

  // get 키워드를 사용하여 게터임을 명시
// 게터는 메서드와 다르게 매개변수를 전혀 받지 않음
 String get name {
   return this._name;
 }

 // 세터는 set이라는 키워드를 사용해서 선언
// 세터는 매개변수로 딱 하나의 변수를 받을 수 있음
set name(String name) {
   this._name = name;
}
}

// 상속
// extends 키워드를 사용하여 상속할 수 있음
// 상속은 어떤 클래스의 기능을 다른 클래스가 사용할 수 있게 하는 기법
// 기능을 물려주는 클래스를 부모 클래스, 물려받는 클래스를 자식 클래스라고 함
// 자식 클래스 간에는 메서드를 공유할 수 없음
class User {
  final String name;
  final int userId;

  User(this.name, this.userId);

  void sayName() {
    print('i am ${this.name}.');
  }

  void sayUserName() {
    print('user id is ${this.userId}.');
  }
}

// User 클래스를 상속하는 클래스
class AdminUser extends User {
  AdminUser(
      String name,
      int userId,
      ) : super(
    name, userId
  );

  void sayAdmin() {
    print('i am an admin user.');
  }
}

// 오버라이드(메서드 재정의)
// 부모 클래스 또는 인터페이스에 정의된 메서드를 재정의할 때 사용됨
// 다트에서는 override 키워드를 생략할 수 있음
// override 키워드를 생략해도 메서드가 덮어씌워 지지만 직접 명시하는 게 협업 및 유지보수에 유리함
class UsualUser extends User {
  UsualUser(
      super.name,
      super.userId
      );

  // override
@override
  void sayName() {
  print('i am ${this.name}. i am usual user.');
}
}

// 인터페이스
// 상속은 공유되는 기능을 상속받는 개념이지만 인터페이스는 공통으로 필요한 기능을 정의 해두는 역할을 함
// 상속은 단 하나의 클래스만 할 수 있지만 인터페이스는 적용 개수에 제한이 없음
class GirlGroup implements Idol {
  final String name;
  final int memberCount;

  GirlGroup(
      this.name,
      this.memberCount,
      );

  void sayName() {
    print('i am ${this.name}, girl group.');
  }

  void sayMemberCount(){
    print('the number of member is ${this.memberCount}.');
  }
}

// 믹스인
// 특정 클래스에 원하는 기능들만 골라넣을 수 있는 기능
mixin IdolSingMixin on Idol{
  void sing(){
    print('${this.name} is singing');
  }
}

class BoyGroup extends Idol with IdolSingMixin{
  BoyGroup(
      super.name,
      super.memberCount
      );

  void sayMale() {
    print('i am boy group');
  }
}

// 추상
// 추상은 상속이나 인터페이스로 사용하는 데 필요한 속성만 정의하고 인스턴스화 할 수 없도록 하는 기능

abstract class Flower{
  final String name;
  final int count;

  Flower(this.name, this.count);

  void sayName();
  void sayCount();
}

class FlowerOfThisMonth implements Flower {
  final String name;
  final int count;

  FlowerOfThisMonth(
      this.name,
      this.count
      );

  void sayName() {
    print('in this month, we have various ${this.name}.');
  }

  void sayCount() {
    print('the number of roses is ${this.count}.');
  }
}

// 제네릭
// 클래스나 함수의 정의를 선언할 때가 아니라 인스턴스화 하거나 실행할 때로 미룸
// 특정 변수의 타입을 하나의 타입으로 제한하고 싶지 않을 때 자주 사용함
class Cache<T> {
  final T data;

  Cache({
    required this.data
});
}

// 스태틱
// static 키워드를 사용하면 클래스의 인스턴스가 아닌 클래스 자체에 귀속됨
class Counter{
  static int i = 0;

  Counter(){
    i;
    print(++i);
  }
}

void main() {
  // 기본 생성자 사용
  Idol blackPink = Idol('블랙핑크', 4);
  blackPink.sayName();

  // fromMap이라는 네임드 생성자 사용
  Idol newjeans = Idol.fromMap({
    'name': 'newjeans',
    'memberCount': 5
  });
  newjeans.sayName();

  Color black = Color('black');
  print(black._colorName);

 Color2 red = Color2();
 red.name = 'red';
 print(red.name);

 AdminUser firstUser = AdminUser('first', 1);

 firstUser.sayName();
 firstUser.sayUserName();
 firstUser.sayAdmin();

 UsualUser usualUser = UsualUser('일반유저', 8);
 usualUser.sayName();
 usualUser.sayUserName();

 GirlGroup blackpink = GirlGroup('blackpink', 4);
 blackpink.sayName();
 blackpink.sayMemberCount();

 BoyGroup bts = BoyGroup('bts', 7);

 bts.sing();

 FlowerOfThisMonth rose = FlowerOfThisMonth('rose', 300);
rose.sayName();
rose.sayCount();

final cache = Cache<List<int>>(
  data: [1, 2, 3]
);

print(cache.data.reduce((value, element) => value + element));

Counter count1 = Counter();
Counter count2 = Counter();
Counter count3 = Counter();

// 캐스케이드 연산자
// 인스턴스에서 해당 인스턴스의 속성이나 멤버 함수를 연속해서 사용하는 기능
Idol kissoflife = Idol('키오프', 4)
  ..sayName();
}

// 요약
// Class 키워드를 사용하여 클래스를 선언할 수 있다.
// 클래스를 인스턴스화하면 클래스의 인스턴스를 변수로 저장할 수 있다.
// 상속 받으면 부모 클래스의 모든 속성을 물려받는다.
// - extends 키워드를 사용해서 상속받을 수 있다.
// - 하나의 자식 클래스는 하나의 부모 클래스만 상속받을 수 있다.
// 오버라이드는 이미 선언되어 있는 속성을 덮어쓰는 기능이다.
// 인터페이스는 클래스의 필수 속성들을 정의하고 강제할 수 있는 기능이다.
// - implements 키워드를 사용해서 인터페이스를 적용할 수 있다
// - 하나의 클래스에 여러 개의 인터페이스를 적용할 수 있다.
// 믹스인은 상속처럼 모든 속성을 물려받지 않고 원하는 기능만 골라서 적용할 수 있다.
// - with 키워드를 사용해서 믹스인을 적용한다.
// - 하나의 클래스에 여러 개의 믹스인을 적용할 수 있다.
// 제네릭은 변수 타입의 정의를 인스턴스화까지 미룰 수 있다. <>를 사용해서 제네릭을 선언한다.
// 스태틱은 클래스에 직접 귀속되는 속성들이다. static 키워드를 사용해서 선언한다.
// 캐스케이드 연산자는 인스턴스에서 해당 인스턴스의 속성이나 멤버 함수를 연속해서 호출할 때 사용한다.
