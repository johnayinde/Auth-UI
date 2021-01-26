import 'package:first_app/auth/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final Widget icon;
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    this.hintText,
    this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hintText,
        ),
      ),
    );
  }
}
