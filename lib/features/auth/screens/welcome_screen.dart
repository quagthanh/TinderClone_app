import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_clone/features/auth/screens/login_screen.dart';
import 'package:tinder_clone/features/auth/widgets/login_button.dart';
import 'package:tinder_clone/features/auth/widgets/login_richtext.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 120),
                  SvgPicture.asset(
                    "images/Tinder_(app)-White-Logo.wine.svg",
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 35),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 35),
                  LoginRichtext(),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        LoginButton(
                          label: 'Tạo tài khoản',
                          onPressed: () {
                            // TODO: Handle Phone Number sign in
                          },
                        ),
                        const SizedBox(height: 15),
                        LoginButton(
                          label: 'Đăng nhập',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bạn gặp sự cố khi đăng nhập?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
