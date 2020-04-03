import 'package:flutter/material.dart';

import '../custom_fonts.dart';

class SocialIcons extends StatelessWidget {
  SocialIcons();

  Widget iconWidget(icon) {
    return GestureDetector(
      onTap: () {
      },
          child: Icon(
        icon,
        color: Colors.amber,
        size: 60.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Row(
        children: <Widget>[
    iconWidget(CustomIcons.facebook),
    iconWidget(CustomIcons.google),
    iconWidget(CustomIcons.twitter),
        ],
      );
  }
}
