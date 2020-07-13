import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class ResultPage extends StatelessWidget {
  // final String bmi;
  // final String result;
  // final String feedback;
  // ResultPage({@required this.})

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 40.0),
                  decoration: BoxDecoration(
                    color: Color(kActiveColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        arguments['result'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.greenAccent[400],
                        ),
                      ),
                      Text(
                        arguments['bmi'],
                        textAlign: TextAlign.center,
                        style: kNumberFontStyle.copyWith(fontSize: 80.0),
                      ),
                      Text(
                        arguments['feedback'],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  color: Color(kPink),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Center(
                    child: Text(
                      'RECALCULATE',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
