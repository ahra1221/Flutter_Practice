
class Collections {

  void listAdd() {
    int age = 34;
    List<int> ageList = [];
    ageList.add(age);
    print("add 1 : $ageList");

    ageList.add(age);
    print("add 2 : $ageList");

    ageList.addAll([1,3,4,5,6]);
    print("add 3 : $ageList");
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(["홍길동", "룰루", "랄라","우와", "플러터"]);

    nameList.removeLast();
    nameList.removeAt(1);
    print("list Remove 1 : $nameList");

    nameList.remove("홍길동");
    print("list Remove 2 : $nameList");

    nameList.clear();
    print("list Remove 3 : $nameList");
  }

  void listController() {
    List<int> ageList = [1,2,3,4,5,6,7,8,9,10];
    print("listController 1 : ${ageList.length}");

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print("ageFirst: $ageFirst, ageLast: $ageLast");

    int ageFour = ageList[3];
    print("ageFour: $ageFour");
  }

  void listPractice() {
    List<String> animalList = [];
    animalList.addAll(["강아지", "고양이", "하마", "거위", "펭귄"]);
    animalList.removeAt(1);
  }

  void collectionMap() {
    Map<String, int> nameAgeMap = {};
    nameAgeMap["ahra"] = 25;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap["a"] = 1;
    dynamicMap["b"] = "고양이";
    dynamicMap["c"] = true;
    print(dynamicMap);
    print("get dynamicMap: ${dynamicMap["b"]}");

    dynamicMap.remove("b");
    print("remove dynamicMap: $dynamicMap");

    dynamicMap.clear();
  }

  void mapPractice() {
    Map<String, int> practiceMap = {};
    practiceMap["a"] = 1;
    practiceMap["b"] = 2;
    practiceMap["c"] = 3;
    // practiceMap.remove("b");
    practiceMap.addAll({"a":1, "b": 2, "c": 3});
    practiceMap.removeWhere (
      (key, value) {
        return key == "b";
      },
    );
  }

  void collectionSet() {
    Set ss = {};
    ss.add("a");
    ss.add(1);
    print("collectionSet 1: $ss");

    ss.remove("a");
    print("collectionSet 2: $ss");
  }

  void setPractice() {
    Set<String> practiceSet = {"한국", "일본", "미국", "태국", "홍콩"};
    practiceSet.removeWhere(
      (e) => e == "한국"
    );
  }
}