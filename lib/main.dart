import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor)
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
        ],
      ),     
    );
  }
}