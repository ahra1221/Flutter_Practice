import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog"),
      ),
      body: ElevatedButton(
          onPressed: () {
            showDialog(
                barrierColor: Colors.purple.withOpacity(0.3),
                // barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.grey.shade300,
                    shadowColor: Colors.red,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: 100,
                      height: 200,
                      child: Column(
                        children: [
                          Text("다이얼로그"),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "닫기",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Text("dialog 호출")),
    );
  }
}
