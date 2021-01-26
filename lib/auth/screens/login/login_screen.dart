import 'package:first_app/auth/components/already_have_account.dart';
import 'package:first_app/auth/components/constants.dart';
import 'package:first_app/auth/components/rounded_input_field.dart';
import 'package:first_app/auth/components/rounded_password_field.dart';
import 'package:first_app/auth/components/rounder_button.dart';
import 'package:first_app/auth/screens/login/widgets/background.dart';
import 'package:first_app/auth/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                'assets/icons/login.svg',
                height: size.height * 0.4,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                hintText: 'Enter Email Address',
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: 'LOGIN',
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAccount(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
