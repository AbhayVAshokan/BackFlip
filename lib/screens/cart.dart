import 'package:flutter/material.dart';

import '../widgets/cart/bottom_bar.dart';
import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/searchresults/mobile_card.dart';
import '../models/mobile.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        elevation: 10.0,
        menuButton: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox.shrink(),
            cart.length == 0
                ? GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/searchresults'),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xFFD9D9D9),
                            size: 120.0,
                          ),
                          Text(
                            'Cart is empty',
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: Color(0xFFD9D9D9),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        return MobileCard(cart[index]);
                      },
                    ),
                  ),
            BottomBar(),
          ],
        ),
      ),
      bottomNavigationBar: myBottomNavBar(
        context: context,
        currentIndex: 2,
      ),
    );
  }
}
