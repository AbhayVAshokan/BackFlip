import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/searchresults/mobile_card.dart';
import '../models/mobile.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: myBottomNavBar(
        context: context,
        currentIndex: 1,
      ),
    );
  }
}
