import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/sign_in/widgets/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign In"),),
      body: Body(),
    );
  }
}
