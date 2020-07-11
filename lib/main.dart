import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.amber,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: CustomCard(
                  cardColor: Color(0xFF1D1E33),
                )),
                Expanded(
                  child: CustomCard(
                    cardColor: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CustomCard(
            cardColor: Color(0xFF1D1E33),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(
                cardColor: Color(0xFF1D1E33),
              )),
              Expanded(
                  child: CustomCard(
                cardColor: Color(0xFF1D1E33),
              ))
            ],
          ))
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color cardColor;
  CustomCard({@required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
