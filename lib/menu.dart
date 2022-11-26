import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Menu'),
      ),
      //Attempt to create a pullup drawar menu, failed due to lack of experience and time :(
      //INITIALLY TRIED TO CREATE A FLOATING BUTTON ON TOP OF MENU BAR
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        //MAKING IT EXTEND/PULLUP
        child: FloatingActionButton.extended(
          onPressed: () => DefaultBottomBarController.of(context).swap(),
          //CREATE CUTE ANIMATED LABEL AT THE TOP WHEN EXTENDED
          label: AnimatedBuilder(
            animation: DefaultBottomBarController.of(context).state,
            builder: (context, child) => Row(
              children: [
                //TEXT CHANGES WHEN BAR IS EXTENDED AND NOT EXTENDED
                Text(DefaultBottomBarController.of(context).isOpen
                    ? 'Pull down'
                    : 'Pull up'),
                const SizedBox(
                  width: 4.8,
                ),
                //CREATING A MATRIX XONTAINER WHICH WILL CONTAIN THE INFO OF THE PULL UP BAR
                //USED MATRIX FOR DYNAMIC REASONS
                AnimatedBuilder(
                  animation: DefaultBottomBarController.of(context).state,
                  builder: (context, child) => Transform(
                      alignment: Alignment.bottomRight,
                      transform: Matrix4.diagonal3Values(
                          1,
                          DefaultBottomBarController.of(context).state.value *
                                  2 -
                              1,
                          1),
                      child: child),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.menu_outlined, size: 20),
                  ),
                ),
              ],
            ),
          ),
          elevation: 2,
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
