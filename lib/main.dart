import 'package:flutter/material.dart';
import 'package:tinder_clone/features/splash/screens/splash_screen.dart';
import 'package:tinder_clone/core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttinder',
      theme: tinderTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
