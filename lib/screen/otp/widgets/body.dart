import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/screen/otp/widgets/otp_form.dart';
import 'package:flutter_e_commerce_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05,),
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
            const Text(
              "We sent your code to +1 898 860 ***",
            ),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15,),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1,),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class buildTimer extends StatelessWidget {
  const buildTimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        // TweenAnimationBuilder(
        //     tween: Tween(begin: 30.0, end: 0.0),
        //     duration: const Duration(seconds: 30),
        //     builder: (context, value, child) => Text(
        //         "00: ${value}",
        //       style: const TextStyle(color: kPrimaryColor),
        //     ),
        //   onEnd: () {},
        // ),
      ],
    );
  }
}

