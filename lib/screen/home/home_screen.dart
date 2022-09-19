import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/enum.dart';
import 'package:flutter_e_commerce_app/screen/home/widgets/body.dart';
import 'package:flutter_e_commerce_app/widget/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
