import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // StatelessWidget 생성자는 재사용 가능한 인스턴스 위젯으로 처리될 수 있도록 빌드타임 상수(const)를 붙여 메모리를 절약한다.
  // 참고 => final: 런타임 상수, const: 빌드타임 상수
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
      ),
      body: Text('Home Screen'),
    );
  }
}
