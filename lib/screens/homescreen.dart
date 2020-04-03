import 'package:e_commerce_app/widgets/my_appbar.dart';
import 'package:e_commerce_app/widgets/my_bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        menuButton: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.location_on,
                  size: 20.0,
                ),
                label: Text(
                  'Bangalore',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: myBottomNavBar(context: context, index: 0),
    );
  }
}
