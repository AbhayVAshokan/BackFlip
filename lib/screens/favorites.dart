import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/searchresults/mobile_card.dart';
import '../models/mobile.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < mobiles.length; i++) {
      if (mobiles[i].isLiked) favorites.add(mobiles[i]);
    }
    return Scaffold(
      appBar: myAppBar(
        context: context,
        elevation: 10.0,
        menuButton: true,
      ),
      body: SafeArea(
        child: favorites.length == 0
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Color(0xFFD9D9D9),
                    size: 100.0,
                  ),
                  Text(
                    'No favorites',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Color(0xFFD9D9D9),
                        ),
                  ),
                ],
              ))
            : ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return MobileCard(favorites[index]);
                }),
      ),
      bottomNavigationBar: myBottomNavBar(
        context: context,
        currentIndex: 1,
      ),
    );
  }
}
