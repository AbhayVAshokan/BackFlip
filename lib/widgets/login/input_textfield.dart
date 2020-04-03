import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final mediaQuery, icon, text, keyboardType, obscureText, controller;

  InputTextField({
    this.mediaQuery,
    this.icon,
    this.keyboardType,
    this.obscureText,
    this.text,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: mediaQuery.size.width * 0.1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              left: 5.0,
              right: 10.0,
            ),
            child: Icon(
              icon,
              size: 30.0,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 40.0,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: text,
                  hintStyle: TextStyle(color: Color(0x8A000000),),
                  
                ),
                keyboardType: keyboardType,
                obscureText: obscureText,
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
