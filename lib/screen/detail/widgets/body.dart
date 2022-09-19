import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/color_dots.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/product_description.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/product_images.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/top_rounded_container.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/DefaultButton.dart';

class Body extends StatelessWidget {
  final Product? product;
  const Body({Key? key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product!),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15,
                                top: getProportionateScreenWidth(15),
                                bottom: getProportionateScreenWidth(40),
                              ),
                              child: DefaultButton(
                                text: "Add to Cart",
                                press: () {},
                              ),
                            ),
                        ),
                      ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

