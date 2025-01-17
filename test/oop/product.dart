
class Product {
  String name;
  String company;
  int count;
  int price;

  // Product(this.name, this.company);

  Product({
    required this.name,
    required this.company,
    required this.count,
    required this.price
  });

  void sale(){
    count ++;
  }

  @override
  String toString() {
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }
}