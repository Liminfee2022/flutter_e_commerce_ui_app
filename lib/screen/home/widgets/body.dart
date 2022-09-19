import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/categories.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/discount_banner.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/home_header.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/popular_product.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/section_title.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/special_offers.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/product_cart.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          PopularProduct(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
        ],
      ),
    ));
  }
}


