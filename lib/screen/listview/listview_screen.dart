import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list view")),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 40
        ),
        scrollDirection: Axis.horizontal,
        children: [
          Text("가",style: TextStyle(fontSize: 20)),
          Text("나",style: TextStyle(fontSize: 20)),
          Text("다",style: TextStyle(fontSize: 20)),
          Text("리",style: TextStyle(fontSize: 20)),
          Text("마",style: TextStyle(fontSize: 20)),
          Text("바",style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
