

import 'dart:ui';
import 'package:flutter/material.dart';


class MyThem{
  static Color? primary = Colors.orange[900] ;
   static Color accent = Colors.black;

  static Color? primaryDark = Colors.blue[900] ;
  static Color? accentDark = Colors.yellow[800];

   static ThemeData lightTheme = ThemeData(
     primaryColor: primary,
     accentColor: accent,
     scaffoldBackgroundColor: Colors.transparent,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: accent,
     ),
     appBarTheme: AppBarTheme(
       elevation: 0,
         centerTitle:  true,
         backgroundColor: Colors.transparent,
       titleTextStyle: TextStyle(color: accent,fontSize: 24),

     ),
       textTheme: TextTheme(
         bodyMedium: TextStyle(color: accent,fontSize: 25,fontWeight: FontWeight.w500),
       )
      );
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      accentColor: accentDark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: accentDark,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle:  true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 24),
      ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),
    )
  );
}


