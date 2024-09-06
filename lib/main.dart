import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //어플의 시작점

  //build 입력하면 자동 생성됨
  @override
  Widget build(BuildContext context) {
    //theme 선택 - base UI 가 됨. (marterial or ios 디자인인데 marterial를 더 선호함)
    // class 생성 후 , 쓰면 아래와 같이 나옴
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text("App Bar"),
        ),
        body: Center(
          child: Text("body center"),
        ),
      ), //Scaffold : 화면의 구성 및 구조애 관한 것들을 가지고 있는 위젯
    );
  }
}
