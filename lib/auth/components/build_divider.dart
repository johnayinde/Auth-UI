import 'package:flutter/material.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Color(0xFFD990909),
        height: 1.5,
      ),
    );
  }
}
