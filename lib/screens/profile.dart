import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navbar.dart';
import '../widgets/profile/personal_info.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'My Orders',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                Row(
                                  children: <Widget>[],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10.0),
                          elevation: 5.0,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'My Cards and Wallets',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                Row(
                                  children: <Widget>[],
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
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Row(
                                children: <Widget>[],
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
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Row(
                                children: <Widget>[],
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
