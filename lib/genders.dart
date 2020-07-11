import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const int lightTextColor = 0xFF8D8E98;

class Gender extends StatelessWidget {
  final String type;
  final IconData typeIcon;

  Gender({this.type, this.typeIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          typeIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          type,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(lightTextColor),
          ),
        ),
      ],
    );
  }
}
