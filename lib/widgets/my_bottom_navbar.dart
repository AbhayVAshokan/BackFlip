import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget myBottomNavBar({@required context, @required index}) {
  return CurvedNavigationBar(
    items: [
      Icon(Icons.home),
      Icon(Icons.favorite),
      Icon(Icons.shopping_cart),
      Icon(Icons.person),
    ],
    color: Theme.of(context).primaryColor,
    backgroundColor: Theme.of(context).backgroundColor,
    buttonBackgroundColor: Theme.of(context).backgroundColor,
    height: 50.0,
    index: index,
    animationDuration: Duration(milliseconds: 200),
    onTap: (index) {
      if (index == 0) {
        Navigator.pushReplacementNamed(context, '/homescreen');
      } else if (index == 1) {
        print('Index 1 was pressed');
      } else if (index == 2) {
        print('Index 2 was pressed');
      }
    },
  );
}
