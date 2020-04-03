import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myAppBar({@required context, menuButton, elevation}) {
  return AppBar(
    brightness: Brightness.light,
    leading: menuButton == true
        ? IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        : IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
    title: Row(
      children: <Widget>[
       CircleAvatar(
         backgroundImage: AssetImage('assets/images/logo.jpg'),
       ),
       SizedBox(width: 10.0),
        Text('BackFlip', style: GoogleFonts.quintessential(textStyle: TextStyle(fontWeight: FontWeight.bold),
        fontSize: 25.0,),),
      ],
    ),
    // actions: <Widget>[
    //   IconButton(
    //     icon: Icon(Icons.notifications),
    //     onPressed: () => Navigator.pushNamed(
    //       context,
    //       '/notifications',
    //     ),
    //   ),
    //   IconButton(
    //     icon: Icon(Icons.shopping_cart),
    //     onPressed: () => Navigator.pushNamed(context, '/cart'),
    //   ),
    // ],
    elevation: elevation == null ? 10 : elevation,
  );
}
