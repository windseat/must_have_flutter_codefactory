import 'package:flutter/material.dart';

// 이 코드는 핫리로드를 사용하지 못 한다.
// 핫리로드를 하게 되면, main() 메소드와 initState() 메소드는 재실행되지 않고, MyApp를 루트로 갖는 기존의 위젯 트리를 재빌드한다. 결과적으로 핫리로드 후에도 화면 변화는 없다.
// 따라서 Run 콘솔에 있는 핫리스타트를 사용해야 한다.
// 핫리스타트를 하면, 프로그램이 처음부터 시작하고, 새로운 버전의 main() 메소드를 실행하며, 결국 Hello 텍스트를 보여주는 위젯 트리를 빌드한다.

// 빌드시
// error: The name 'MyApp' isn't a class. (creation_with_non_type at [hello_world] test\widget_test.dart:16)
// 메시지에 대해서는 test/widget_test.dart 파일을 await tester.pumpWidget(const MyApp()); 부분을 주석처리하거나
// MyApp 을 MateralApp 로 변경해 준다.

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello Code Factory!!",
          ),
        ),
      ),
    ),
  );
}
