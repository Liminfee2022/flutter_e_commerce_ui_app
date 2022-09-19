import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/sign_in/widgets/sign_form.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/no_account_text.dart';
import 'package:flutter_e_commerce_app/widget/social_media_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Sign in with your email and password or connect with social media",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SocialMediaCards(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



