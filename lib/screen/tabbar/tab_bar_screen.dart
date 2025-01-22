import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 8, vsync: this);
  String selectedTab = "none";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("tab bar"),
      ),
      body: Column(
        children: [
          Text(selectedTab),
          TabBar(
              controller: tabController,
              onTap: (value) {
                print("value: $value");
              },
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              overlayColor: WidgetStateProperty.all(Colors.blue.shade100),
              splashBorderRadius: BorderRadius.circular(10),
              // indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorWeight: 10,
              indicator: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 5, color: Colors.red)),
              dividerHeight: 3,
              dividerColor: Colors.grey,
              padding: EdgeInsets.all(10),
              labelPadding: EdgeInsets.all(10),
              tabs: [
                Tab(
                  text: "강아지",
                ),
                Tab(
                  text: "고양이",
                ),
                Tab(
                  text: "뱀",
                ),
                Tab(
                  text: "코끼리",
                ),
                Tab(
                  text: "원숭이",
                ),
                Tab(
                  text: "하마",
                ),
                Tab(
                  text: "얼룩말",
                ),
                Tab(
                  text: "호랑이",
                ),
              ]),
        ],
      ),
    );
  }
}
