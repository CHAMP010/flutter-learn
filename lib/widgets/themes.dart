import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      // textTheme: GoogleFonts.latoTextTheme(),
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ));
  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
}