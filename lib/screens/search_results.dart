import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/homescreen/top_bar.dart';
import '../models/mobile.dart';
import '../widgets/searchresults/mobile_card.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(favorites);
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
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: mobiles.length,
                  itemBuilder: (context, index) {
                    return MobileCard(mobiles[index]);
                  }),
            ),
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
