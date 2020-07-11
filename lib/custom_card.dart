import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  CustomCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
