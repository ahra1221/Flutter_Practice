
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 화면에 기초가 되는 위젯
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("button1")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text("button2")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text("button3"))
          ],
        ),
      ),
    );
  }
}