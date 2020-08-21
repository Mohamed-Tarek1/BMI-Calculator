import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final String title;
  final Function onpress;
  const BottomButton({this.title , this.onpress}) ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          child: Center(child: Text(title,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),)),
          color: Colors.pink,
          margin: EdgeInsets.only(top: 10.0,bottom: 10.0),

          width: double.infinity,
          height: kBottomNavigationBarHeight,

        ),
        onTap: onpress

    );
  }
}
