import 'package:flutter/material.dart';

import '../models/mobile.dart';
import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/profile/personal_info.dart';
import '../widgets/profile/orders.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(orders);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: myAppBar(
        context: context,
        menuButton: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PersonalInfo(),
            ),
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 30.0),
                        Card(
                          margin: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 10.0,
                          ),
                          elevation: 5.0,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: orders.length == 0
                                ? GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                        context, '/searchresults'),
                                    child: Container(
                                      height: 120.0,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Icon(Icons.add_shopping_cart,
                                                color: Color(0xFFD9D9D9),
                                                size: 50.0),
                                            SizedBox(height: 20.0),
                                            Text(
                                              'No orders yet!',
                                              style: TextStyle(
                                                  color: Color(0xFFD9D9D9),
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Orders(),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10.0),
                          elevation: 5.0,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'My Wallet',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '₹2000.0',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(color: Colors.green[300]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10.0),
                          elevation: 5.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'My Reviews',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'VIEW MY REVIEWS',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xFF0000FF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10.0),
                          elevation: 5.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'My Addresses',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'MANAGE ADDRESSES',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xFF0000FF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomRight,
                          child: RaisedButton.icon(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacementNamed(
                                context, '/login'),
                            icon: Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                            ),
                            label: Text(
                              'LOGOUT',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: myBottomNavBar(
        context: context,
        currentIndex: 3,
      ),
    );
  }
}
