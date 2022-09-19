import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/screen/complete_profile/complete_profile_screens.dart';
import 'package:flutter_e_commerce_app/screen/login_success/login_success_screen.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/DefaultButton.dart';
import 'package:flutter_e_commerce_app/widget/custom_suffix_icon.dart';
import 'package:flutter_e_commerce_app/widget/form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }
  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30),),
          buildEmailField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState?.validate() ?? false) {
                _formKey.currentState?.save();
                Navigator.pushNamed(context, CompleteProfileScreens.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kPassNullError);
          return '';
        } else if (password != confirmPassword) {
          addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 2 ) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kPassNullError);
          return '';
        } else if (value!.length < 2) {
          addError(error: kShortPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value) ) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch('$value')) {
          addError(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}