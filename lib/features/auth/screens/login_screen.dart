import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_clone/features/auth/widgets/login_button.dart';
import 'package:tinder_clone/features/auth/widgets/login_richtext.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            children: [
              // Nút quay lại trên cùng bên trái
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "images/Tinder_(app)-White-Logo.wine.svg",
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(height: 35),
                    
                  ],
                ),
              ),

              // RichText Terms + Các nút login
              Column(
                children: [
                  const SizedBox(height: 10),
                  const LoginRichtext(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        LoginButton(
                          iconAsset: 'images/facebook.svg',
                          label: 'Đăng nhập với Facebook',
                          onPressed: () {
                            // TODO: Handle Facebook sign in
                          },
                        ),
                        const SizedBox(height: 15),
                        LoginButton(
                          iconAsset: 'images/person.svg',
                          label: 'Đăng nhập với Local Account',
                          onPressed: () {
                            // TODO: Handle Local sign in
                          },
                        ),
                        const SizedBox(height: 15),
                        LoginButton(
                          iconAsset: 'images/phone.svg',
                          label: 'Đăng nhập với Số Điện Thoại',
                          onPressed: () {
                            // TODO: Handle Phone sign in
                          },
                        ),
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
