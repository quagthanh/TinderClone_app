import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/features/auth/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
       super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(child: SvgPicture.asset("images/tinder_svg.svg",width:200,height: 200)),
    );
  }
}