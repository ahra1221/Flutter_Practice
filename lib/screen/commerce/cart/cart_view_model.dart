import 'package:flutter/widgets.dart';
import 'package:flutter_projects/screen/commerce/home/model/product_model.dart';
import 'package:flutter_projects/screen/commerce/util.dart';

class CartViewModel with ChangeNotifier {

  static final CartViewModel instance = CartViewModel();

  List<ProductModel> cartList = [];

  void clearProduct() {
    cartList.clear();
  }

  void addProduct(ProductModel productModel) {
    if(cartList.any((element) => element == productModel)) {
      Util.showToast("already exist");
      return;
    }
    cartList.add(productModel);
    notifyListeners();
    Util.showToast("add cart!");
  }
}