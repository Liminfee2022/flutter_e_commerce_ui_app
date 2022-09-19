import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/profile/widgets/profile_menu.dart';
import 'package:flutter_e_commerce_app/screen/profile/widgets/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          ProfilePic(),
          SizedBox(height: 30,),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),ProfileMenu(
            text: "Notification",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),ProfileMenu(
            text: "MSetting",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),ProfileMenu(
            text: "Log out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
