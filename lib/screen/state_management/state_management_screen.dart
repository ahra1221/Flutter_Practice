import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/state_management/get/get_x_screen.dart';
import 'package:flutter_projects/screen/state_management/notifier/notifier_screen.dart';
import 'package:flutter_projects/screen/state_management/provider/provider_screen.dart';

class StateManagementScreen extends StatelessWidget {
  const StateManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagement"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GetXScreen();
                }));
              },
              child: Text("GetX")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProviderScreen();
                }));
              },
              child: Text("Provider")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotifierScreen();
                }));
              },
              child: Text("Notifier"))
        ],
      ),
    );
  }
}
