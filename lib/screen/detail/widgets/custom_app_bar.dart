import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/rounded_icon_btn.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final double? rating;
  const CustomAppBar({
    Key? key,
    @required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/icons/Star Icon.svg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}