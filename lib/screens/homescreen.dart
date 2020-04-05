import 'package:e_commerce_app/widgets/my_appbar.dart';
import 'package:e_commerce_app/widgets/my_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../widgets/homescreen/top_bar.dart';
import '../models/suggestions.dart';
import '../widgets/homescreen/grid_row.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        menuButton: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.pink,
              margin: EdgeInsets.all(5.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  PageView(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/great_indian_sale.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/big_billion_day.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/electronics.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 10.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        SizedBox(width: 2.0),
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        SizedBox(width: 2.0),
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              color: Theme.of(context).backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Based on your recent searches',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    GridRow(suggestions[0], suggestions[1]),
                    GridRow(suggestions[2], suggestions[3]),
                    GridRow(suggestions[4], suggestions[5]),
                  ],
                ),
              ),
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
