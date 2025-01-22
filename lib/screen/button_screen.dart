import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/click/click_screen.dart';
import 'package:flutter_projects/screen/column/column_practice_screen.dart';
import 'package:flutter_projects/screen/column/column_screen.dart';
import 'package:flutter_projects/screen/complicate_practice.dart';
import 'package:flutter_projects/screen/container/container_practice_screen.dart';
import 'package:flutter_projects/screen/container/container_screen.dart';
import 'package:flutter_projects/screen/default_tab_controller/default_tab_controller_screen.dart';
import 'package:flutter_projects/screen/image/image_screen.dart';
import 'package:flutter_projects/screen/network/network_screen.dart';
import 'package:flutter_projects/screen/pageview/pageview_screen.dart';
import 'package:flutter_projects/screen/row/row_practice_screen.dart';
import 'package:flutter_projects/screen/row/row_screen.dart';
import 'package:flutter_projects/screen/stack/stack_practice_screen.dart';
import 'package:flutter_projects/screen/stack/stack_screen.dart';
import 'package:flutter_projects/screen/tabbar/tab_bar_screen.dart';
import 'package:flutter_projects/screen/text/text_screen.dart';
import 'package:flutter_projects/screen/text_form_field/text_form_field_screen.dart';
import 'package:flutter_projects/screen/todo/todo_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 화면에 기초가 되는 위젯
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      return ColumnPracticeScreen();
                    }));
                  },
                  child: Text("column practice")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RowScreen();
                    }));
                  },
                  child: Text("row")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RowPracticeScreen();
                    }));
                  },
                  child: Text("row practice")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ComplicatePractice();
                    }));
                  },
                  child: Text("complicate practice")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return TextScreen();
                    }));
                  },
                  child: Text("text screen")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ImageScreen();
                    }));
                  },
                  child: Text("image screen")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return StackScreen();
                    }));
                  },
                  child: Text("stack screen")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return StackPracticeScreen();
                    }));
                  },
                  child: Text("stack practice")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NetworkScreen();
                    }));
                  },
                  child: Text("network screen")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PageViewScreen();
                    }));
                  },
                  child: Text("pageview screen")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DefaultTabControllerScreen();
                    }));
                  },
                  child: Text("tabbar screen")),
              SizedBox(height: 10)
            ],
          ),
        )
      ),
    );
  }
}
