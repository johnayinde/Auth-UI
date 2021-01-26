// import 'dart:html';

import 'auth/screens/welcome/welcome_screen.dart';
// import 'first_app/result.dart';
import 'package:flutter/material.dart';

// import 'first_app/quiz.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
