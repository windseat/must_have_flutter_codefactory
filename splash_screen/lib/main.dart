import 'package:flutter/material.dart';

// 빌드시 FAILURE: Build failed with an exception. 어쩌고 잔뜩 뭐라고 하는 에러를 만나게 된다.
// pub.dev 사이트에서 webview_flutter 를 검색하여 pubspec.yaml 에 최신 버전으로 수정해 주고 Pub get

/*
그리고 에러메시지 중에 보이는

Flutter Fix ─────────────────────────────────────────────────────────────────────────────────┐
│ The plugin webview_flutter_android requires a higher Android SDK version.                     │
│ Fix this issue by adding the following to the file                                            │
│ E:\Coding_Study\Flutter\must-have-flutter-codefactory\splash_screen\android\app\build.gradle: │
│ android {                                                                                     │
│   defaultConfig {                                                                             │
│     minSdkVersion 19                                                                          │
│   }                                                                                           │
│ } 

부분도 반영해 줘야 한다

build.gradle 파일을 열어서
minSdkVersion flutter.minSdkVersion 부분을 minSdkVersion 19로 바꾼다.
*/

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            // color: Colors.orange,
            color: Color(0xFFF99231),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 200,
                  ),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
