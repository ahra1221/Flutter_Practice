import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/screen/commerce/cart/cart_view_model.dart';
import 'package:flutter_projects/screen/commerce/home/model/product_model.dart';
import 'package:flutter_projects/screen/commerce/cart/widgets/cart_product.dart';
import 'package:flutter_projects/screen/commerce/home/widgets/home_image.dart';
import 'package:flutter_projects/screen/commerce/home/widgets/home_product.dart';
import 'package:flutter_projects/screen/commerce/home/widgets/home_short_cut.dart';
import 'package:flutter_projects/screen/commerce/home/widgets/home_subtitle.dart';
import 'package:flutter_projects/screen/commerce/util.dart';

import '../aseets_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ProductModel> newProduct = [
    /// 신제품
    ProductModel(
        image: AssetsPath.productJacketJean,
        name: "청 자켓",
        price: 90000,
        like: false,
        reviewCount: 27,
        reviewRating: 4.1),
    ProductModel(
        image: AssetsPath.productShoes,
        name: "나이키 신발",
        price: 190000,
        like: false,
        reviewCount: 19,
        reviewRating: 3.9),
    ProductModel(
        image: AssetsPath.productManJacket,
        name: "남성 자켓 ",
        price: 220000,
        like: true,
        reviewCount: 0,
        reviewRating: 0),
    ProductModel(
        image: AssetsPath.productManStreet,
        name: "길거리 패션",
        price: 73000,
        like: false,
        reviewCount: 5,
        reviewRating: 3.3),
  ];

  List<ProductModel> popularProduct = [
    /// 인기상품
    ProductModel(
      image: AssetsPath.productBag,
      name: "샤넬 가방",
      price: 2500000,
      like: true,
      reviewCount: 71,
      reviewRating: 4.6,
    ),
    ProductModel(
      image: AssetsPath.productWomen,
      name: "여성 패션",
      price: 99000,
      like: true,
      reviewCount: 64,
      reviewRating: 4.8,
    ),
    ProductModel(
      image: AssetsPath.productManSuit,
      name: "남성 정장",
      price: 350000,
      like: false,
      reviewCount: 35,
      reviewRating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        HomeImage(),
        SizedBox(height: 30),
        HomeShortCut(),
        SizedBox(height: 30),
        HomeSubtitle(label: "신제품"),
        HomeProduct(productList: newProduct),
        HomeSubtitle(label: "인기상품"),
        HomeProduct(productList: popularProduct),
        HomeSubtitle(label: "오늘만 할인"),
        CartProduct(productList: newProduct, scroll: false, onPressed: (productModel) {
          CartViewModel.instance.addProduct(productModel);
        }),
        SizedBox(height: 80)
      ],
    );
  }
}
