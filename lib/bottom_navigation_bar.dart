import 'package:flutter/material.dart';

//WILL INHERIDT FROM FOLLOWING CLASSES TO CREATE THE ICONS AND THEIR PAGES
import 'package:turksihairlines_test/check_in.dart';
import 'package:turksihairlines_test/circles.dart';
import 'package:turksihairlines_test/flights.dart';
import 'package:turksihairlines_test/home.dart';
import 'package:turksihairlines_test/menu.dart';

//CREATES THE BOTTOM NAV BAR
class BottomNavBar extends StatelessWidget {
  // final List _posts = [
  //   'Visa',
  //   'Covid-19',
  //   'Baggage',
  //   'Menu',
  //   'Insurance',
  // ];

  @override
  Widget build(BuildContext context) {
    //CREATS DefaultTabController WHICH WILL CONTROL HOW THE INTERACTION WILL BE CONDUCTED
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //the nav bar creation
        appBar: AppBar(
          //place Turkish airlines logo
          title: Image.asset('images/TALogo_30.png'),
          //centerTitle: true,
          backgroundColor: Colors.redAccent[700],
        ),
        //making it a bottom nav bar
        bottomNavigationBar: TabBar(
          //to indicate the icon is pressed on
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0),
              insets: EdgeInsets.symmetric(horizontal: 16.0)),
          labelColor: Colors.redAccent[700],
          //backgroundColor: Colors.redAccent[700],
          tabs: [
            //home icon
            Tab(
              icon: Icon(Icons.home_outlined),
            ),
            //Flights Icon
            Tab(
              icon: Icon(Icons.airplanemode_active),
            ),
            //Check in icon
            Tab(
              icon: Icon(Icons.airplane_ticket),
            ),
            //menu icon
            Tab(
              icon: Icon(Icons.menu_outlined),
            ),
          ],
        ),
        //ALIGN NAV BAR OPTIONS IN BODY
        body: Column(
          children: <Widget>[
            Container(
              width: 600,
              height: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  //
                  // ),
                  color: Colors.white),
              child:

                  //accessing different pages when pressed on different icons
                  TabBarView(children: [
                //INHERITED CLASSES TO ROUTE TO DIFF PAGES
                HomePage(),
                Flights(),
                CheckIn(),
                Menu(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
