import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/enum.dart';
import 'package:flutter_e_commerce_app/screen/profile/widgets/body.dart';
import 'package:flutter_e_commerce_app/widget/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile/";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}

