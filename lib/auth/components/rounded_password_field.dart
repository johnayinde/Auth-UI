import 'package:first_app/auth/components/constants.dart';
import 'package:first_app/auth/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          onChanged: onChanged,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter Password',
            border: InputBorder.none,
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          )),
    );
  }
}
