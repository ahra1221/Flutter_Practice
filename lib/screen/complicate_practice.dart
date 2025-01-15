
import 'package:flutter/material.dart';

class ComplicatePractice extends StatelessWidget {
  const ComplicatePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complicate 실습")),
      body: Container(
        color: Colors.grey,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 100, height:100, color: Colors.blue),
                Container(width: 100, height:100, color: Colors.red),
                Container(width: 100, height:100, color: Colors.green)
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 100, height:100, color: Colors.blue),
                Container(width: 100, height:100, color: Colors.red),
                Container(width: 100, height:100, color: Colors.green)
              ]
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 30, height:30, color: Colors.green),
                    Container(width: 30, height:30, color: Colors.orange)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 30, height:30, color: Colors.orange),
                    Container(width: 30, height:30, color: Colors.green)
                  ],
                )
              ]
            )
          ],
        ),
      )
    );
  }
}
