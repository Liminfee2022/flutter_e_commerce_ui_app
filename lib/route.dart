import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/screen/cart/cart_screen.dart';
import 'package:flutter_e_commerce_app/screen/complete_profile/complete_profile_screens.dart';
import 'package:flutter_e_commerce_app/screen/detail/detail_screen.dart';
import 'package:flutter_e_commerce_app/screen/forgot_password/forgot_password_screen.dart';
import 'package:flutter_e_commerce_app/screen/home/home_screen.dart';
import 'package:flutter_e_commerce_app/screen/login_success/login_success_screen.dart';
import 'package:flutter_e_commerce_app/screen/otp/otp_screen.dart';
import 'package:flutter_e_commerce_app/screen/profile/profile_screen.dart';
import 'package:flutter_e_commerce_app/screen/sign_up/sign_up_screen.dart';
import 'package:flutter_e_commerce_app/screen/splash_screen.dart';
import 'package:flutter_e_commerce_app/screen/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreens.routeName: (context) => CompleteProfileScreens(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};