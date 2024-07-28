import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

///
/// Widget
/// 시각적인 요소
///
/// StatelessWidget
/// 한번 그려진 후에는 변하지 않는 위젯
/// ex) 앱의 로고, 정적인 텍스트 등
///

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ///
    /// Scaffold
    /// 앱의 기본적인 구조(앱바, 네비게이션 요소, 기본적인 레이아웃 구조), 레이아웃을 정의하고 구성하는데 사용하는 위젯
    ///
    return const Scaffold(body: Text("a"));
  }
}

/// StatefulWidget
/// 상태를 가지고 있으며, 상태가 변경될 때마다 UI가 업데이트

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key});

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageState>{

  String msg = "A";

  @override
  void initState() {
    super.initState();

    /// 3초 딜레이
    /// A -> B로 바꿈

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        msg = "B";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(msg));
  }
}