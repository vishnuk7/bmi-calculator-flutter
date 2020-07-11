import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_card.dart';
import 'genders.dart';

const bottomContainerHeight = 80.0;
const int activeColor = 0xFF1D1E33;
const int inactiveColor = 0xFF111328;
const int pink = 0xFFEB1555;

class GenderData {
  int currentColor;
  bool isActive;
  String type;
  GenderData({@required this.type}) {
    this.currentColor = inactiveColor;
    this.isActive = false;
  }
}

void selectedGender(GenderData data) {
  if (!data.isActive && (data.type == 'M' || data.type == 'F')) {
    data.isActive = true;
    data.currentColor = activeColor;
  } else {
    data.isActive = false;
    data.currentColor = inactiveColor;
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderData male = new GenderData(type: 'M');
  GenderData female = new GenderData(type: 'F');

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
                  onPress: () {
                    setState(() {
                      if (female.isActive) {
                        female.isActive = false;
                        female.currentColor = inactiveColor;
                      }
                      selectedGender(male);
                    });
                  },
                  cardChild:
                      Gender(type: 'Male', typeIcon: FontAwesomeIcons.mars),
                  cardColor: Color(male.currentColor),
                )),
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        if (male.isActive) {
                          male.currentColor = inactiveColor;
                          male.isActive = false;
                        }
                        selectedGender(female);
                      });
                    },
                    cardColor: Color(female.currentColor),
                    cardChild: Gender(
                        type: 'Female', typeIcon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CustomCard(
            cardColor: Color(inactiveColor),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(
                cardColor: Color(inactiveColor),
              )),
              Expanded(
                  child: CustomCard(
                cardColor: Color(inactiveColor),
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
