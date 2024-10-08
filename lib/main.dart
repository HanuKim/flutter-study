// material.dart 파일을 불러와야 기본 제공 위젯을 사용할 수 있음
import 'package:flutter/material.dart';
import 'util/edge_insets_converter.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: Text('hello world'),
//       ),
//     ),
//   ));
// }
//
// // 마지막 매개변수의 끝에 ,를 추가하는 코딩 스탠다드가 존재하는데, 이 기호를 기준으로 줄 나눔이 되므로 웬만하면 따를 것

// void main() {
//   runApp(
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SizedBox(
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('hello'),
//                 Text('world'),
//               ],
//             ),
//           ),
//         ),
//       ),
//   );
// }

void main() {
  // runApp(MyApp());
  // runApp(ColumnWidgetExample());
  // runApp(StackWidgetExample());
  runApp(SplashScreen());
}

// text widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             'hello world',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 1. gesture widget --------------------------------------------------------------
// 사용자가 키보드로 글자를 입력하는 행위 외의 모든 입력을 플러터에서는 제스처라고 부른다.
// Button, IconButton, GestureDetector, FloatingActionButton 위젯이 있다.
// Button 위젯에는 TextButton, OutlineButton, ElevatedButton 이 있다.
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.blueAccent
//               ),
//               child: Text('text button')),
//         ),
//       ),
//     );
//   }
// }

// Icon Button widget
// Icons 클래스를 통해 플러터에서 제공하는 기본 아이콘을 사용할 수 있다.
// 참고: https://fonts.google.com/icons
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
//         ),
//       ),
//     );
//   }
// }

// GestureDetector widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               print('on tap');
//             },
//             onDoubleTap: () {
//               print('on double tap');
//             },
//             onLongPress: () {
//               print('on long press');
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.red,
//               ),
//               width: 100.0,
//               height: 100.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// GestureDetector 위젯에서 제공하는 제스처 매개변수
// 1. onTap: 한 번 탭했을 때
// 2. onDoubleTap: 두 번 연속 탭했을 때
// 3. onLongPress: 길게 눌렀을 때
// 4. onPanStart: 수평 또는 수직으로 드래그가 시작됐을 때
// 5. onPanUpdate: 수평 또는 수직으로 드래그를 하는 동안 드래그 위치가 업데이트될 때마다
// 6. onPanEnd: 수평 또는 수직으로 드래그가 끝났을 때
// 7. onHorizontalDragStart: 수평으로 드래그를 시작했을 때
// 8. onHorizontalDragUpdate: 수평으로 드래그를 하는 동안 드래그 위치가 업데이트될 때마다
// 9. onHorizontalDragEnd
// 10. onVerticalDragStart
// 11. onVerticalDragUpdate
// 12. onVerticalDragEnd
// 13. onScaleStart: 확대가 시작됐을 때
// 14. onScaleUpdate
// 15. onScaleEnd

// FloatingActionButton widget
class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
        ),
        body: Container(),
      ),
    );
  }
}

// 2. design widget --------------------------------------------------------------
// container widget
// 다른 위젯을 담을 때 사용하는 위젯으로, 너비와 높이를 지정하거나 배경이나 테두리를 추가할 때 사용
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.red,
//               border: Border.all(
//                 width: 20.0,
//                 color: Colors.black,
//               ),
//               borderRadius: BorderRadius.circular(
//                 16.0,
//               ),
//             ),
//             width: 200.0,
//             height: 400.0,
//           ),
//         ),
//       ),
//     );
//   }
// }

// SizedBox widget
// 일반적으로 일정 크기의 공간을 공백으로 두고 싶을 때 사용
// container 위젯을 사용해도 되지만, SizedBox는 const 생성자를 사용했을 때 퍼포먼스에서 이점을 얻을 수 있음
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.red,
//               border: Border.all(
//                 width: 20.0,
//                 color: Colors.black,
//               ),
//               borderRadius: BorderRadius.circular(
//                 16.0,
//               ),
//             ),
//             width: 200.0,
//             height: 400.0,
//           ),
//         ),
//       ),
//     );
//   }
// }

// padding widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.pinkAccent,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(16, 20, 50, 20),
//               child: Container(
//                 color: Colors.amber,
//                 width: 50.0,
//                 height: 50.0,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// EdgeInsets 클래스의 생성자
// 1. EdgeInsets.all(16.0): 상하좌우로 매개변수에 입력된 패딩을 균등하게 적용
// 2. EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0): 가로(horizontal), 세로(vertical) 패딩을 따로 적용
// 3. EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0): 위, 아래, 좌, 우 패딩을 따로 적용
// 4. EdgeInsets.fromLTRB(15.0, 16.0, 14.0, 11.0): 포지셔널 파라미터를 좌, 우, 위, 아래 순서대로 입력

// SafeArea
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          top: true,
          bottom: true,
          left: true,
          right: true,
          child: Container(
            color: Colors.amber,
            height: 200.0,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}

// 3. 배치 관련 위젯 ---------------------------------------------------------------
// 하위 위젯을 가로 또는 세로로 배치하거나 위젯 위에 위젯을 겹칠 때 사용
// Row, Column 위젯은 children 매개변수 노출
// Row는 가로가 주축, 세로가 반대축이고 Column은 세로가 주축, 가로가 반대축

// Row widget
class RowWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.red,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Column widget
// class ColumnWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // List of containers to display
//     final List<Widget> containers = [
//       Container(
//         width: 50.0,
//         color: Colors.amber,
//       ),
//       Container(
//         width: 50.0,
//         color: Colors.pinkAccent,
//       ),
//       Container(
//         width: 50.0,
//         color: Colors.blue,
//       ),
//     ];
//
//     // Get the total height of the screen
//     final double screenHeight = MediaQuery.of(context).size.height;
//
//     // Calculate the height for each container based on the number of containers
//     final double containerHeight = screenHeight / containers.length;
//
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: containers.map((container) {
//               return SizedBox(
//                 height: containerHeight, // Set height dynamically
//                 child: container,
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Flexible widget
class ColumnWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Flexible 위젯은 자식 위젯이 가능한 한 많이 크기를 조절할 수 있도록 허용하지만 내부 자식 위젯이 본인의 크기를 제약할 수 있음
// Expanded 위젯은 남아 있는 모든 공간을 자식 위젯이 가능한 최대로 채우도록 함
// 즉 Expanded 위젯은 Flexible(flex: 1, fit: FlexFit.tight)와 같음

// Stack widget
// 위젯을 겹치는 기능
// 처음 컨테이너부터 마지막 컨테이너 순으로 아래에서 위로 쌓임
class StackWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.black,
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.blue,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.pinkAccent,
                ),
              ],
            )),
      ),
    );
  }
}

// 요약
// 1. Text 위젯은 글자를 화면에 그릴 때 사용
// 2. 제스처 관련 위젯에는 Button, Icon Button, GestureDetector, FloatingActionButton이 있음
// 3. Button 위젯에는 TextButton, OutlinedButton, ElevatedButton이 있음
// 4. 디자인 관련 위젯에는 Container, SizedBox, Padding, SafeArea가 있음
// 5. 배치 관련 위젯에는 Row, Column, Flexible, Expanded, Stack이 있음

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF99231),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
