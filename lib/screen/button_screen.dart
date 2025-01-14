import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/column_screen.dart';
import 'package:flutter_projects/screen/container_practice_screen.dart';
import 'package:flutter_projects/screen/container_screen.dart';
import 'package:flutter_projects/screen/row_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 화면에 기초가 되는 위젯
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContainerScreen();
                  }));
                },
                child: Text("container")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContainerPracticeScreen();
                  }));
                },
                child: Text("container practice")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ColumnScreen();
                  }));
                },
                child: Text("column")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RowScreen();
                  }));
                },
                child: Text("row"))
          ],
        ),
      ),
    );
  }
}
