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

  List<String> labelList = [
    "강아지",
    "고양이",
    "뱀",
    "코끼리",
    "원숭이",
    "하마",
    "얼룩말",
    "호랑이",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("tab bar"),
      ),
      body: Column(
        children: [
          Text(
            selectedTab,
            style: TextStyle(fontSize: 20),
          ),
          TabBar(
              controller: tabController,
              onTap: (value) {
                selectedTab = labelList[value];
                setState(() {});
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
                  border: Border.all(width: 5, color: Colors.red)
              ),
              dividerHeight: 3,
              dividerColor: Colors.grey,
              padding: EdgeInsets.all(10),
              labelPadding: EdgeInsets.all(10),
              tabs: List.generate(
                  labelList.length, (index) => Tab(text: labelList[index]))
          ),
        ],
      ),
    );
  }
}
