import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/authenticationScreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(child: SvgPicture.asset("images/tinder_svg.svg",width:200,height: 200)),
    );
  }
}