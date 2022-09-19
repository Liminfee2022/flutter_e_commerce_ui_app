import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    @required this.category,
    @required this.image,
    @required this.numberOfBrands,
    @required this.press,
  }) : super(key: key);

  final String? category, image;
  final int? numberOfBrands;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                "$image",
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.2),
                      const Color(0xFF343434).withOpacity(0.5),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "$numberOfBrands Brands"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}