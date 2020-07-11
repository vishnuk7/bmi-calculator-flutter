import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_card.dart';
import 'genders.dart';

const bottomContainerHeight = 80.0;
const int darkBlack = 0xFF1D1E33;
const int pink = 0xFFEB1555;

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
                  cardChild:
                      Gender(type: 'Male', typeIcon: FontAwesomeIcons.mars),
                  cardColor: Color(darkBlack),
                )),
                Expanded(
                  child: CustomCard(
                    cardColor: Color(darkBlack),
                    cardChild: Gender(
                        type: 'Female', typeIcon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CustomCard(
            cardColor: Color(darkBlack),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(
                cardColor: Color(darkBlack),
              )),
              Expanded(
                  child: CustomCard(
                cardColor: Color(darkBlack),
              )),
            ],
          )),
          Container(
            color: Color(pink),
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
