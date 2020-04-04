import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget myBottomNavBar({@required context, @required currentIndex}) {
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
    index: currentIndex,
    animationDuration: Duration(milliseconds: 200),
    onTap: (index) {
      if (index == currentIndex) {
        print('doing nothing');
      } else if (index == 0) {
        Navigator.pushReplacementNamed(context, '/homescreen');
      } else if (index == 1) {
        print('Index 1 was pressed');
      } else if (index == 2) {
      } else {
        Navigator.pushReplacementNamed(context, '/profile');
      }
    },
  );
}
