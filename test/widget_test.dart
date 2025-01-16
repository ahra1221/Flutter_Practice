
import 'collections.dart';

void main() {

  Collections collections = Collections();
  collections.listAdd();
  collections.listRemove();
  collections.listController();
  collections.listPractice();
}

void variableTest() {
  String name = "ahra";
  print(name);

  double weight = 10;
  print(weight);

  int age = 50;
  print(age);

  bool b = true;
  print(b);

  var name2 = "meme";

  // dynamic 많이 사용하지 않음
  dynamic name3 = "ahah";
  name3 = 1;
  name3 = false;

  // 상수를 final, const
  const name4 = "wpw";

  int? ex = null;
}