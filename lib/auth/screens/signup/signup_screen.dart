import 'package:first_app/auth/components/already_have_account.dart';
import 'package:first_app/auth/components/build_divider.dart';
import 'package:first_app/auth/components/constants.dart';
import 'package:first_app/auth/components/rounded_input_field.dart';
import 'package:first_app/auth/components/rounded_password_field.dart';
import 'package:first_app/auth/components/rounder_button.dart';
import 'package:first_app/auth/components/social_icon.dart';
import 'package:first_app/auth/screens/login/login_screen.dart';
import 'package:first_app/auth/screens/signup/widget/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatelessWidget {
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
                'SIGNUP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: 'Enter Email Address',
                icon: Icon(Icons.person),
                onChanged: (value) {},
              ),
              RoundedPasswordField(onChanged: (value) {}),
              RoundedButton(
                text: 'SIGNUP',
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAccount(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    svg: 'assets/icons/facebook.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    svg: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    svg: 'assets/icons/google-plus.svg',
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: size.width * 0.8,
      child: Row(
        children: [
          BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BuildDivider(),
        ],
      ),
    );
  }
}
