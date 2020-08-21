import 'package:flutter/material.dart';
import 'package:bmi_calculator/coestant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/coestant.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/input_page.dart';
class Result extends StatelessWidget {

  final String bmiesult;
  final String resulttext ;
  final String interpretation;

  const Result({ @required this.bmiesult,@required this.resulttext,@required this.interpretation}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kinactiveColour,
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI - Result',
            style: ktybeTextStyle,
          ),
        ),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
             'Your Result' ,
              style: TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
        ),
    Expanded(
      flex: 5,
      child: ReusableCard(colour: kactiveColour,cardchild:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Center(
            child: Text(
              resulttext.toUpperCase(),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.lightGreen
                  ,fontWeight: FontWeight.bold
              ),
            ),
          ),
            Center(
              child: Text(
              bmiesult ,
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Text(
            interpretation,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600
            ),
          ),

        ],



      ) ),


    ),
        BottomButton(title:'RE-CALCULATE',onpress: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => InputPage()));
        },)



      ],




    ),
    );
  }
}
