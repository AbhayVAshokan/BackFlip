import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/homescreen/top_bar.dart';
import '../models/mobile.dart';
import '../widgets/searchresults/mobile_card.dart';

class SearchResults extends StatefulWidget {
  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  _addToCart(mobile) {
    if (mobile.inCart) {
      for (var i = 0; i < cart.length; i++) {
        if (cart[i].name == mobile.name) {
          cart.removeAt(i);
        }
      }

      Toast.show(
        "Removed from cart",
        context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
      );
    } else {
      cart.add(mobile);
      Toast.show("Added to cart", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    }
    mobile.inCart = !mobile.inCart;
  }

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
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: mobiles.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _addToCart(mobiles[index]);
                        });
                      },
                      child: MobileCard(
                        mobiles[index],
                      ),
                    );
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
