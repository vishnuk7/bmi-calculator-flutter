import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;
  CustomCard({@required this.cardColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
