import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    // visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kTextColor),
      gapPadding: 10,
    );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Color(0xFF8B8B8B),
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  );
}
