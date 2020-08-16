import 'package:covid_app/constants.dart';
import 'package:covid_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
