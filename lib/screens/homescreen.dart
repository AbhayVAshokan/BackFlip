import 'package:e_commerce_app/widgets/my_appbar.dart';
import 'package:e_commerce_app/widgets/my_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../widgets/homescreen/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: myAppBar(
        context: context,
        menuButton: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(),
          ],
        ),
      ),
      bottomNavigationBar: myBottomNavBar(
        context: context,
        currentIndex: 0,
      ),
    );
  }
}
