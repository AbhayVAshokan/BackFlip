import 'package:flutter/material.dart';

import 'package:e_commerce_app/models/mobile.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'My Orders',
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 120.0,
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
              itemCount: orders.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Image.asset(
                  orders[index].imageUrl,
                );
              }),
        ),
      ],
    );
  }
}
