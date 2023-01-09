import 'package:blog_web_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // 메인에서 MyApp 생성자 호출
  runApp(
      const MyApp()); // MyApp 컨텍스트가 불필요하다면, runApp(MaterialApp(home: HomeScreen())); => 결과 동일
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
