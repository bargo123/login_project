import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  TextStyle bold({Color color = Colors.black, double fontSize = 14}) {
    return GoogleFonts.montserrat(color: color, fontSize: fontSize, fontWeight: FontWeight.bold, decoration: TextDecoration.none);
  }

  TextStyle normal({Color color = Colors.black, double fontSize = 14}) {
    return GoogleFonts.montserrat(
        color: color, fontSize: fontSize, fontWeight: FontWeight.normal, decoration: TextDecoration.none);
  }

  TextStyle medium({Color color = Colors.black, double fontSize = 14}) {
    return GoogleFonts.montserrat(color: color, fontSize: fontSize, fontWeight: FontWeight.w500, decoration: TextDecoration.none);
  }
}
