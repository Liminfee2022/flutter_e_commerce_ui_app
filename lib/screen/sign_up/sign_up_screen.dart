import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/sign_up/widgets/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up/';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
