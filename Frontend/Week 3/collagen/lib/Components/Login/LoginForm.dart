import 'package:collagen/Screens/Register/SignupScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [Text("Nama Pengguna")],
          ),
          buildUserName(),
          SizedBox(height: 30),
          Row(
            children: [Text("Password")],
          ),
          buildPassword(),
          SizedBox(height: 30),
          Container(
            width: 400,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff3167FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Kata Sandi?",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 200,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                },
                child: Text(
                  "Belum memiliki akun? Daftar",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Nama Pengguna',
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Kata Sandi',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
