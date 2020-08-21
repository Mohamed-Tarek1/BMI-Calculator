
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.yellow.shade600,
          title: Text(
            'Home',
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontFamily: ''

            ),
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.brown.shade500,
                  size: 30.0,
                ),


              ],
            )

          ],

        ),

        body: SafeArea(

          child: Column(

          ),

        ),

      ),
    );
  }
}
