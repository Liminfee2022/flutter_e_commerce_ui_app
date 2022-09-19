import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
