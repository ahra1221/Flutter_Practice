
class Person {
  String name;
  int age;
  double weight;

  Person(this.name, this.age, this.weight);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, weight: $weight}';
  }

  String talk(String inputName) {
    return "$name가 $inputName에게 대화를 신청했습니다.";
  }
}