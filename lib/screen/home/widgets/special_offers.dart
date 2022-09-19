import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/section_title.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/special_offer_card.dart';
import 'package:flutter_e_commerce_app/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                numberOfBrands: 18,
                category: "Smartphone",
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                numberOfBrands: 24,
                category: "Fashion",
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}