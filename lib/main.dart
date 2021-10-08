import 'package:flutter/material.dart';

import 'pages/message_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        HomePage.routeNameHomePage: (context) => HomePage(),
        MessagePage.routeNameMessagePage: (context) => MessagePage(),
      },
    );
  }
}
