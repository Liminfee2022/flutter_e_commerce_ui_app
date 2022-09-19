import 'package:flutter/material.dart';

import 'package:flutter_e_commerce_app/screen/login_success/widgets/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login success"),
        // leading: SizedBox(),
      ),
      body: Body(),
    );
  }
}
