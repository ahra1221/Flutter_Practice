import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/screen/commerce/cart/cart_view_model.dart';
import 'package:flutter_projects/screen/commerce/cart/widgets/cart_product.dart';

import '../util.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  CartViewModel vm = CartViewModel.instance;
  VoidCallback? listener;

  @override
  void initState() {
    // TODO: implement initState
    listener = (){
      setState(() {});
    };
    vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    vm.removeListener(listener!);
    listener = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CartProduct(
        productList: vm.cartList, scroll: true, onPressed: (productModel) {
          vm.removeProduct(productModel);
    });
  }
}
