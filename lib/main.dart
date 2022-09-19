import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/route.dart';
import 'package:flutter_e_commerce_app/screen/profile/profile_screen.dart';
import 'package:flutter_e_commerce_app/screen/splash_screen.dart';
import 'package:flutter_e_commerce_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}




