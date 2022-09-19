import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/complete_profile/widgets/body.dart';

class CompleteProfileScreens extends StatelessWidget {
  static String routeName = "/complete_profile/";
  const CompleteProfileScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
        body: Body(),
    );
  }
}
