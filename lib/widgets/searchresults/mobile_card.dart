import 'package:flutter/material.dart';

import 'package:e_commerce_app/models/mobile.dart';

class MobileCard extends StatefulWidget {
  final mobile;
  MobileCard(this.mobile);

  @override
  _MobileCardState createState() => _MobileCardState();
}

class _MobileCardState extends State<MobileCard> {
  void addToFavorites(mobile, isLiked) {
    if (mobile.isLiked && !favorites.contains(mobile.name)) {
      favorites.add(mobile);
    } else if (!mobile.isLiked) {
      for(var i=0; i<favorites.length; i++) {
        if(favorites[i].name == mobile.name) {
          favorites.removeAt(i);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Card(
        elevation: 20.0,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    widget.mobile.imageUrl,
                    height: mediaQuery.size.height * 0.15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.mobile.name,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          width: mediaQuery.size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                      vertical: 3.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          widget.mobile.rating.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13.0,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 13.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '(' + widget.mobile.reviews + ')',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.mobile.isLiked =
                                        !widget.mobile.isLiked;
                                  });
                                  addToFavorites(
                                      widget.mobile, widget.mobile.isLiked);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color(0xFFEBFFCF),
                                  ),
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: widget.mobile.isLiked
                                        ? Colors.red
                                        : Colors.blueGrey,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '₹' + widget.mobile.currentPrice,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            widget.mobile.originalPrice,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            '${widget.mobile.discount}% off',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Upto ',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '₹' + '8,050',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ' off on exchange',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                children: <Widget>[
                  ...widget.mobile.features.map((element) {
                    return Card(
                      child: Container(
                        margin: EdgeInsets.all(3.0),
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          element,
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.0,
                              ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
