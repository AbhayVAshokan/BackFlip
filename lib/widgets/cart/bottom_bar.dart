import 'package:flutter/material.dart';

import 'package:e_commerce_app/models/mobile.dart';
import 'package:toast/toast.dart';

class BottomBar extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<BottomBar> {
  _calculateCost(cart) {
    double sum = 0;
    cart.forEach((mobile) {
      sum += double.parse(mobile.currentPrice.split(',').join(''));
    });
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 2.0,
      ),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 5.0,
          spreadRadius: 5.0,
          color: Colors.grey,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '₹${_calculateCost(cart)}',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                'view price details',
                style: TextStyle(
                  color: Color(0xFF0000FF),
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                orders = [...orders, ...cart];
                cart = [];
              });
              Toast.show("Order Placed", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
            color: Colors.red,
            child: Text(
              'Place Order',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                letterSpacing: 0.75,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
