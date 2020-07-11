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
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      Gender(type: 'MALE', typeIcon: FontAwesomeIcons.mars),
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
                        type: 'FEMALE', typeIcon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CustomCard(
            cardColor: Color(kActiveColor),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLableStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kNumberFontStyle,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'cm',
                      style: kLableStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: Color(kPink),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    overlayColor: Color(0x29EB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(kGrey),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
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
