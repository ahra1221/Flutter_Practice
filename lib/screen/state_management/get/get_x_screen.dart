import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/state_management/get/my_controller.dart';
import 'package:get/get.dart';

import 'get_x_second_screen.dart';

class GetXScreen extends StatefulWidget {
  const GetXScreen({super.key});

  @override
  State<GetXScreen> createState() => _GetXScreenState();
}

class _GetXScreenState extends State<GetXScreen> {
  @override
  void initState() {
    // TODO: implement initState
    MyController.setController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(() {
            return Center(
                child: Text(
              MyController.to.count.value.toString(),
              style: TextStyle(fontSize: 20),
            ));
          }),
          ElevatedButton(
              onPressed: () {
                MyController.to.countUp();
              },
              child: Text("count up")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GetXSecondScreen();
                }));
              },
              child: Text("go to GetX Second"))
        ],
      ),
    );
  }
}
