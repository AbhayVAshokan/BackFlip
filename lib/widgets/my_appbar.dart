import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myAppBar({@required context, menuButton = false, elevation = 0.0}) {
  return AppBar(
    brightness: Brightness.dark,
    leading: menuButton
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
        Text(
          'BackFlip',
          style: GoogleFonts.quintessential(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            fontSize: 25.0,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(context, '/profile'),
        child: Container(
          width: 40.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              image: AssetImage('assets/images/user.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],
    elevation: elevation,
  );
}
