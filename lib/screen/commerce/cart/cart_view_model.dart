import 'package:flutter/widgets.dart';
import 'package:flutter_projects/screen/commerce/home/model/product_model.dart';

class CartViewModel with ChangeNotifier {

  static final CartViewModel instance = CartViewModel();

  List<ProductModel> cartList = [];

  void clearProduct() {
    cartList.clear();
  }

  void addProduct(ProductModel productModel) {
    cartList.add(productModel);
    notifyListeners();
  }
}