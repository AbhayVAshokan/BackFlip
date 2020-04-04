import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/homescreen/top_bar.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        menuButton: false,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(
              isHomeScreen: false,
            )
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
