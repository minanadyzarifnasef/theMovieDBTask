import 'package:flutter/material.dart';

import '../constants/colors.dart';

abstract class TextStyles {
  static const TextStyle bold24 =
  TextStyle(fontSize: 24, fontWeight: FontWeight.bold);


  static const TextStyle normal16white = TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: secondFontColor);
  static const TextStyle bold16white = TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: secondFontColor);
}