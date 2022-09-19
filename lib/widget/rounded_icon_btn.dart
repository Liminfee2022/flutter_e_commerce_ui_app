import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key, this.iconData = Icons.arrow_back_ios, @required this.press,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,6),
            blurRadius: 10,
            color: Color(0xFFB0B0B0).withOpacity(0.2),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextButton(
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(left: 6),
            primary: kPrimaryColor,
            backgroundColor: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          onPressed: press,
          child: Icon(iconData),
        ),
      ),
    );
  }
}