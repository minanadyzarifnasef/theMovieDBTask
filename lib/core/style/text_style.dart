import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

abstract class TextStyles {
  //static const TextStyle bold24 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static  TextStyle bold16 = GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold);


  static  TextStyle normal16white = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal,color:secondFontColor );
 // static const TextStyle normal16white = TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: secondFontColor);
 // static const TextStyle bold16white = TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: secondFontColor);
  static  TextStyle bold16white = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold,color: secondFontColor);
}