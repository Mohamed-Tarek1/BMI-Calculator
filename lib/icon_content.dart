
import 'package:flutter/material.dart';
import 'package:bmi_calculator/coestant.dart';
class IconContent extends StatelessWidget {
  final IconData icon;
  final String tybe;
  IconContent({this.icon,this.tybe});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon ,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          tybe,
          style:ktybeTextStyle
        )
      ],
    );
  }
}