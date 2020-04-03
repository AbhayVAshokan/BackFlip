import 'package:flutter/material.dart';

import '../widgets/login/input_textfield.dart';
import '../widgets/login/social_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/splashscreen_background.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                width: mediaQuery.size.width * 0.95,
                height:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.75,
                color: Colors.black54,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.jpg'),
                        radius: 40.0,
                      ),
                    ),
                    InputTextField(
                      icon: Icons.person,
                      text: 'username',
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      mediaQuery: mediaQuery,
                      controller: _usernameController,
                    ),
                    InputTextField(
                      icon: Icons.vpn_key,
                      text: 'password',
                      keyboardType: TextInputType.datetime,
                      obscureText: true,
                      mediaQuery: mediaQuery,
                      controller: _passwordController,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 40.0),
                      alignment: Alignment.bottomRight,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.amber,
                        onPressed: () =>
                            Navigator.pushNamed(context, '/homescreen'),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * 0.05),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.125 -
                  30,
              right: mediaQuery.size.width * 0.1,
              child: SocialIcons(),
            ),
          ],
        ),
      ),
    );
  }
}
