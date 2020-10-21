import 'package:flutter/material.dart';

import './screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        accentColor: Color(0xFF25D366),
        appBarTheme: AppBarTheme(color: Color(0xFF075E54)),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            color: Color(0xFFFFFAFA),
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFAFA),
          ),
          bodyText1: TextStyle(fontSize: 16, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14, color: Color(0xFF737373)),
          subtitle1: TextStyle(fontSize: 12, color: Color(0xFF737373)),
          subtitle2: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        tabBarTheme: TabBarTheme(labelColor: Color(0xFFFFFAFA)),
        buttonTheme: ButtonThemeData(),
        bottomAppBarColor: Color(0xFFFFFAFA),
      ),
    );
  }
}
