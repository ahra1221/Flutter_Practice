import 'package:flutter/material.dart';

class UiExam extends StatefulWidget {
  const UiExam({super.key});

  @override
  State<UiExam> createState() => _UiExamState();
}

class _UiExamState extends State<UiExam> {

  List<String> imageList = [
    "assets/lecture_flutter_image.png",
    "assets/company_responsibility.png",
    "assets/company_sustainability.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imagePageView(),
            _iconList(),
            _noticeList()
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("ui exam"),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
    );
  }

  Widget _imagePageView() {
    return SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Image.asset(
                imageList[index],
                fit: BoxFit.cover
            );
          },
        )
    );
  }

  Widget _iconList() {
    return GridView.count(
      crossAxisCount: 4,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      childAspectRatio: 1.15,
      children: [
        ...List.generate(6, (index) {
          return TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text("taxi $index")
                ],
              ));
        })
      ],
    );
  }

  Widget _noticeList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Icon(Icons.notifications_none_rounded),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text("[이벤트] 공지사항입니다."),
          ),
        );
      },
    );
  }
}
