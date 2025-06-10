
import 'package:flutter/material.dart';

final ThemeData tinderTheme = ThemeData(
  //Color
    primaryColor:const Color.fromRGBO(255, 41, 123, 1.0),
  secondaryHeaderColor:const Color.fromRGBO(255, 88, 100, 1.0),
  canvasColor:const Color.fromRGBO(255, 101, 91, 1.0),

  useMaterial3: true,
  scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
 textTheme: const TextTheme(
  headlineLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  headlineMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    color: Colors.black54,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 165, 49, 88),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      textStyle:const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  
  appBarTheme:const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
  ),
  iconTheme: IconThemeData(color: Colors.grey[800]),
);
