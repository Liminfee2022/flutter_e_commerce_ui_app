import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/screen/complete_profile/complete_profile_screens.dart';
import 'package:flutter_e_commerce_app/screen/otp/otp_screen.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/DefaultButton.dart';
import 'package:flutter_e_commerce_app/widget/custom_suffix_icon.dart';
import 'package:flutter_e_commerce_app/widget/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildFirstNameField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState?.validate() ?? false) {
                _formKey.currentState?.save();
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
          if (value.length >= 2) {
            removeError(error: kShortPassError);
          }
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kPhoneNumberNullError);
          return '';
        } else if (value!.length < 2) {
          addError(error: kShortPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kNameNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kNameNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return;
      },
      validator: (value) {
        if (value?.isEmpty ?? false) {
          addError(error: kAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }
}
