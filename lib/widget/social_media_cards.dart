import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/sign_in/widgets/social_card.dart';

class SocialMediaCards extends StatelessWidget {
  const SocialMediaCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: "assets/icons/facebook-2.svg",
          press: () {},
        ),
        SocialCard(
          icon: "assets/icons/twitter.svg",
          press: () {},
        ),
        SocialCard(
          icon: "assets/icons/google-icon.svg",
          press: () {},
        ),
      ],
    );
  }
}