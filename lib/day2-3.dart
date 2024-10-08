// Stream 
// Future는 반환값을 딱 한 번 받아내는 비동기 프로그래밍에 사용하고 지속적으로 값을 반환받을 때는 Stream을 사용함 
// Stream은 한 번 리슨하면 Stream에 주입되는 모든 값을 지속적으로 받아옴 
 
 // Stream을 사용하려면 dart:async 라이브러리를 import하고, StreamController를 listen 해야 함 
 import 'dart:async';

//  void main() {
//     // StreamController 생성 
//     final controller = StreamController();
//     // StreamController에서 Stream 생성 
//     final stream = controller.stream;

// // Stream에 listen() 함수를 실행하면 값이 주입될 때마다 콜백 함수를 실행할 수 있다.  
//     final streamListener = stream.listen((event) {
//         print(event);
//     });

// // Stream에 값을 주입하기 
//     controller.sink.add(1);
//     controller.sink.add(2);
//     controller.sink.add(3);   
//  }

// 브로드캐스트 스트림
// 하나의 스트림을 생성하고 여러 번 리슨할 수 있음 

void main() {
    final controller = StreamController();

    final stream = controller.stream.asBroadcastStream();

    final streamListener1 = stream.listen((val) {
        print('streamListener1: $val');
    });

    final streamListener2 = stream.listen((val) {
        print('streamListener2: $val');
    });

    controller.sink.add(1);
    controller.sink.add(2);
    
    playStream();
}

// 함수로 스트림 반환
// StreamController를 사용하지 않고 함수로 스트림을 반환할 수 있음 
// async* 키워드를 사용하여 함수를 선언하고 yield 키워드를 사용하여 값을 반환할 수 있음 

Stream<String> calculate(int number) async* {
    for (int i = 0; i <5 ; i++) {
        yield 'i = $i';
await Future.delayed(Duration(seconds: 1));
    } 
} 

void playStream() {
    calculate(10).listen((val) {
        print(val);
    });
}

// 요약
// 비동기 프로그래밍을 이용하면 오랜 기간 CPU의 리소스가 막히는 상황을 방지할 수 있다
// async 키워드를 사용하면 비동기 함수를 정의할 수 있다.
// await 키워드를 사용하면 비동기 함수를 논리적 순서대로 실행할 수 있다. 
// Future는 한 번만 비동기 응답을 받을 때 사용하는 클래스이다.
// Stream은 지속적으로 리슨하여 비동기 응답을 받을 때 사용하는 클래스이다.
// - 한 번 listen() 하면 지속적으로 값을 받아볼 수 있다. 
// - async* 키워드로 정의한다.
// - 값을 반환할 때는 yield 키워드를 사용한다.
// - 함수에서 stream을 반환할 수 있다.