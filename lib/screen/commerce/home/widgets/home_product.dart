import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/screen/commerce/home/model/product_model.dart';
import 'package:flutter_projects/screen/commerce/util.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({required this.productList, super.key});

  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16, right: 16, top: 20),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            ProductModel product = productList[index];
            return GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      product.image,
                      width: 150,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 4),
                    Text(
                      product.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "${Util.nFormat.format(product.price)}원",
                    ),
                    Text("평점 ${product.reviewRating}(${product.reviewCount})")
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 20);
          },
          itemCount: productList.length),
    );
  }
}
