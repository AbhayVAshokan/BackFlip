import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/splashscreen.dart';
import './screens/login.dart';
import './screens/homescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackFlip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green, 
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30.0,
        ),
      ),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (ocntext) => SplashScreen(),
        '/login': (context) => Login(),
        '/homescreen': (context) => HomeScreen(),
      },
    );
  }
}
