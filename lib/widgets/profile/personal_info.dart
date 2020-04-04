import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        width: constraints.maxWidth,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/searchresults'),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(constraints.maxHeight * 0.005),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpeg'),
                radius: constraints.maxHeight * 0.25,
              ),
            ),
            Text(
              'Abhay V Ashokan',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: constraints.maxHeight * 0.15,
                  ),
            ),
            Text(
              'abhayvashokan@gmail.com',
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: Colors.white70,
                    letterSpacing: 1.0,
                    fontSize: constraints.maxHeight * 0.05,
                  ),
            ),
          ],
        ),
      );
    });
  }
}
