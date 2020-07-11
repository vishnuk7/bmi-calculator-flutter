import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

import 'custom_card.dart';
import 'genders.dart';

class GenderData {
  int currentColor;
  bool isActive;
  String type;
  GenderData({@required this.type}) {
    this.currentColor = kInactiveColor;
    this.isActive = false;
  }
}

void selectedGender(GenderData data) {
  if (!data.isActive && (data.type == 'M' || data.type == 'F')) {
    data.isActive = true;
    data.currentColor = kActiveColor;
  } else {
    data.isActive = false;
    data.currentColor = kInactiveColor;
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
                        female.currentColor = kInactiveColor;
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
                          male.currentColor = kInactiveColor;
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
            cardColor: Color(kInactiveColor),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(
                cardColor: Color(kInactiveColor),
              )),
              Expanded(
                  child: CustomCard(
                cardColor: Color(kInactiveColor),
              )),
            ],
          )),
          Container(
            color: Color(kPink),
            width: double.infinity,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
