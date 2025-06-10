import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).canvasColor,
                Theme.of(context).secondaryHeaderColor,
                Theme.of(context).primaryColor,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              stops: const [0.0, 0.35, 1.0],
            ),
          ),
          alignment: Alignment.center,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 35),
                    SvgPicture.asset(
                      "images/Tinder_(app)-White-Logo.wine.svg",
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(height: 35),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'It Starts ',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: 'with\n',
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: 'a ',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: 'Swipe',
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 35),

                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By tapping \'Sign in\' you agree to our ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: 'Temrs\n',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.2, // Mỏng hơn
                              decorationColor: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Learn how we process your data in our ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: 'Privacy\n',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.2, // Mỏng hơn
                              decorationColor: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Policy',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.2, // Mỏng hơn
                              decorationColor: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: 'Cookies Policy\n',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.2, // Mỏng hơn
                              decorationColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
