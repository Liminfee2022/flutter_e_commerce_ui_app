import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/forgot_password/widgets/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
