import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final bool isHomeScreen;
  TopBar({this.isHomeScreen = true});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: isHomeScreen ? Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: RichText(
                    text: TextSpan(
                      text: 'Hi, ',
                      children: [
                        TextSpan(
                          text: 'Abhay!',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Bangalore',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              color: Colors.white,
                              letterSpacing: 1.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ) : SizedBox.shrink(),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/searchresults'),
                    color: Colors.grey,
                    iconSize: 30.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Fire away your searches',
                        hintStyle:
                            Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Color(0xFF575757),
                                  letterSpacing: 0.75,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Color(0xFF3B3B3B),
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w600,
                          ),
                      controller: _searchController,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) => {
                        Navigator.pushNamed(context, '/searchresults'),
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
