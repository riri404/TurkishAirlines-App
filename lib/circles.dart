import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final String child;
  Circles({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //creating circle containers that will include info
      child: Container(
        height: 100,
        width: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red[900],
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Center(
            child: Text(child,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white))),
      ),
    );
  }
}
