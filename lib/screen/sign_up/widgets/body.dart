import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/screen/login_success/login_success_screen.dart';
import 'package:flutter_e_commerce_app/screen/sign_up/widgets/sign_up_form.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/DefaultButton.dart';
import 'package:flutter_e_commerce_app/widget/custom_suffix_icon.dart';
import 'package:flutter_e_commerce_app/widget/form_error.dart';
import 'package:flutter_e_commerce_app/widget/social_media_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              SocialMediaCards(),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By countinuting your confirm that you agree \nwith out term and condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
            ],
          ),
        ),
      ),
    );
  }
}



