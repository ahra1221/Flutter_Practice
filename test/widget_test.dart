
import 'collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {

  // Collections collections = Collections();
  // collections.listAdd();
  // collections.listRemove();
  // collections.listController();
  // collections.listPractice();

  Person person1 = Person("name", 20, 30);

  print("person1: $person1");

  String talk1 = person1.talk("룰루");
  print("talk1: $talk1");

  List<Person> personList = [];
  personList.add(Person("이름1", 30, 60));
  personList.add(Person("이름2", 40, 70));
  personList.add(Person("이름3", 50, 80));

  var talk2 = personList[1].talk(personList[0].name);
  print("talk2: $talk2");

  // var product = Product("Americano","스타벅스");
  var product = Product(name: "Americano", company: "스타벅스", count: 0, price: 1000);
  print("product: $product");

  product.sale();
  product.sale();
  print("product: $product");
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