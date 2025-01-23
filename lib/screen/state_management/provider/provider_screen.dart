import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/state_management/provider/counter_model.dart';
import 'package:flutter_projects/screen/state_management/provider/provider_second_screen.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              counterModel.count.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                counterModel.countUp();
              },
              child: Text("count up")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProviderSecondScreen();
                }));
              },
              child: Text("provider second"))
        ],
      ),
    );
  }
}
