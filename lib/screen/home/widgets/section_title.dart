import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/size_config.dart';

class SectionTitle extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  const SectionTitle({
    Key? key,@required this.text,@required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$text",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              "See more",
              // style: TextStyle(
              //   fontSize: getProportionateScreenWidth(18),
              //   color: Colors.black,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}