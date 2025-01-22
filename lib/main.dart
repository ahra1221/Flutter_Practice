
import 'package:flutter/material.dart';
import 'package:flutter_projects/custom_scroll_behavior.dart';
import 'package:flutter_projects/screen/button_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonScreen(),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}
