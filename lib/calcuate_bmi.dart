import 'package:flutter/material.dart';
import 'dart:math';

class CalculateBMI {
  double _bmi;
  final int weight;
  final int height;
  CalculateBMI({@required this.height, @required this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String feedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.Try to do more exercise';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight Good Job!';
    } else {
      return 'You have a less than normal body weight, you can eat bit more';
    }
  }
}
