import 'package:flutter/material.dart';

//import 'package:turksihairlines_test/top_navigation_bar.dart';
import 'package:turksihairlines_test/bottom_navigation_bar.dart';

//MAIN FUNCTION TO RUN THE APP
void main() {
  runApp(MyApp());
}

//THE APP CLASS WHICH CREATES A MATERIALAPP
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //makes the application visuals more interactive to the user
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //THE HOME WILL OUTPUT THE BOTTOM NAV BAR WHICH IS IMPORTED AT THE TOP
      home: BottomNavBar(),
      //TopList(),
    );
  }
}
