import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';
import 'package:flutter_e_commerce_app/screen/detail/detail_screen.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/section_title.dart';
import 'package:flutter_e_commerce_app/screen/sign_in/sign_in_screen.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/product_cart.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ...List.generate(demoProducts.length, (index) {
              if (demoProducts[index].isPopular) {
                return ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments: ProductDetailsArguments(product: demoProducts[index]),
                  ),
                );
              }
              return SizedBox.shrink();
            }),
            SizedBox(
              width: getProportionateScreenWidth(20),
            )
          ]),
        ),
      ],
    );
  }
}
