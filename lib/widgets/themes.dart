import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(
      primarySwatch: Colors.deepPurple,
    cardColor: Colors.white,
    canvasColor: creamColor,
    focusColor: darkBluishColor,
      highlightColor: darkBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color:Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(inherit: true),
      ),
  );
  static ThemeData darkTheme(BuildContext context) =>ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.black,
    canvasColor: darkCreamColor,
    focusColor: lightPurpleColor,
    highlightColor: Colors.white,
    appBarTheme: AppBarTheme(
      color:Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(inherit: true),
    ),);

  // Colors
static Color creamColor = Color(0xfff5f5f5);
static Color darkCreamColor = Vx.gray900;
static Color darkBluishColor = Color(0xff403b58);
  static Color lightPurpleColor = Vx.indigo500;

  }
