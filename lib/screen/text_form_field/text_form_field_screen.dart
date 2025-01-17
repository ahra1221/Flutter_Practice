import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("TextForm"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  // keyboardType: TextInputType.emailAddress,
                  keyboardType: TextInputType.visiblePassword,
                  // obscureText: true,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  cursorColor: Colors.blue,
                  cursorWidth: 6,
                  cursorRadius: Radius.circular(3),
                  maxLines: 2, /// 화면에 보이는 maxLine 수
                  maxLength: 40,
                  decoration: InputDecoration(
                    hintText: "글자를 입력해주세요",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.purple
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
