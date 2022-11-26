import 'package:flutter/material.dart';
import 'package:turksihairlines_test/circles.dart';

//THE HOMPAGE OF THE APP, IT IS THE MAIN PAGE, IT CAN BE ACCESS FROM NAV BAR TOO
class HomePage extends StatelessWidget {
  //THE LIST OF TITLES OF TH SCROLLABLE MENU AT THE TOP
  final List _posts = [
    'Visa',
    'Covid-19',
    'Baggage',
    'Menu',
    'Insurance',
  ];

  //THE CONTENTS OF THE HOME PAGE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Welcome,'),
      //   backgroundColor: Colors.redAccent,
      // ),
      body: Column(
        //LIST OF WIDGETS INSIDE THE APP HOME PAGE
        children: <Widget>[
          //Top info bar
          Container(
              width: 600,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  //
                  // ),
                  color: Colors.white30),
              child: Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        return Circles(
                          child: _posts[index],
                        );
                      }))),
          //CONTAINER THAT CONTAINS THE BACKGROUND AND ALL THE WIDGETS
          Container(
            alignment: Alignment.topCenter,
            width: 413,
            height: 390,
            decoration: BoxDecoration(color: Colors.white),
            //MAKE IT IN COLUMN FORMAT WHICH MAKES THE CONTAINERS IN PAGE VERTICALLY ALIGNED
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Welcome flyer container
                Container(
                  width: 410,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.white,
                  ),
                  child: Text("Welcome, Flyer",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 43,
                    top: 39,
                    bottom: 30,
                  ),
                ),

                //Memeber container
                Container(
                  alignment: Alignment.topLeft,
                  width: 410,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.red,
                  ),
                  child: Text("Miles & Smiles :)",
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal)),
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 43,
                    top: 39,
                    bottom: 30,
                  ),
                ),

                //white space container
                Container(
                  width: 410,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 43,
                    top: 39,
                    bottom: 30,
                  ),
                ),

                //Book flight
                Container(
                  width: 410,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.red,
                  ),
                  child: Row(
                    children: <Widget>[
                      //white space
                      Container(
                        width: 40,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.only(
                          left: 32,
                          right: 43,
                          top: 39,
                          bottom: 30,
                        ),
                      ),

                      //from Container
                      Container(
                        //alignment: Alignment.topRight,
                        width: 145,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.white,
                        ),
                        child: Text("   From :",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal)),
                      ),

                      //white space Container
                      Container(
                        width: 40,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.only(
                          left: 32,
                          right: 43,
                          top: 39,
                          bottom: 30,
                        ),
                      ),

                      //To Container
                      Container(
                        //alignment: Alignment.topRight,
                        width: 145,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.white,
                        ),
                        child: Text(" To :",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal)),
                      ),

                      //Center(child: Text('home page')),
                      // ElevatedButton(
                      //     onPressed: () {},
                      //     child: Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
