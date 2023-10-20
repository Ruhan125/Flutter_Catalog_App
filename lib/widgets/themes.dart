
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
       cardColor: Colors.black,
      canvasColor: creamColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,

        ),


      )
  );

  static ThemeData get darkTheme => ThemeData(
    cardColor: Colors.black,
      canvasColor: darkcreamColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,

        ),


      )

  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray800;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple400;




}

