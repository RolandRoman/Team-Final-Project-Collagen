import 'package:collagen/Components/Login/LoginForm.dart';
import 'package:flutter/cupertino.dart';

class LoginComponent extends StatefulWidget {
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
                SizedBox(
                  height: 0.05,
                ),
                SizedBox(
                  height: 0.05,
                ),
                Image.asset(
                  "assets/images/signin_logo.png",
                  height: 200,
                  width: 252,
                ),
                SizedBox(
                  height: 20,
                ),
                SignInForm(),
              ],
            ),
          ),
        ),
      );
  }
}
