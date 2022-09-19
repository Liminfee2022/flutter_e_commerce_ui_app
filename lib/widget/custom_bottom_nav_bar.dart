import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/enum.dart';
import 'package:flutter_e_commerce_app/screen/home/home_screen.dart';
import 'package:flutter_e_commerce_app/screen/profile/profile_screen.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.5),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: selectedMenu == MenuState.home
                      ? kPrimaryColor
                      : inActiveIconColor,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Heart Icon.svg", color: selectedMenu == MenuState.favorite
                    ? kPrimaryColor
                    : inActiveIconColor,)),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg", color: selectedMenu == MenuState.message
                    ? kPrimaryColor
                    : inActiveIconColor,)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
                icon: SvgPicture.asset("assets/icons/User Icon.svg", color: selectedMenu == MenuState.profile
                    ? kPrimaryColor
                    : inActiveIconColor,)),
          ],
        ),
      ),
    );
  }
}