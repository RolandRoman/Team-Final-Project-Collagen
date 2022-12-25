// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Components/Login/LoginForm.dart';
import 'package:flutter/material.dart';

import '../../Screens/Register/SignupScreen.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: (20)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 0.05,
                      ),
                      const SizedBox(
                        height: 0.05,
                      ),
                      Image.asset(
                        "assets/images/signin_logo.png",
                        height: 200,
                        width: 252,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SignInForm(),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/vektor_signin.png",
                    scale: 0.8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignupScreen.routeName);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: (10)),
                      child: Text(
                        "Belum memiliki akun? Daftar",
                        style: TextStyle(
                          height: 20.2,
                          wordSpacing: 2,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}