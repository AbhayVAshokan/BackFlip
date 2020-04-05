import 'package:flutter/material.dart';

class GridRow extends StatelessWidget {
  final gadget1, gadget2;
  GridRow(this.gadget1, this.gadget2);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                gadget1.imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              Text(
                gadget1.name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                gadget2.imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              Text(
                gadget2.name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
