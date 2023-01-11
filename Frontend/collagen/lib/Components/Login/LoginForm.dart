// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:collagen/Screens/Homepage/HomePageScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  valid login(String email, password) async {

    try {
      Response response = await post {
        Url.parse('https://reqres.in/api/login'),
        body: {
          'email' : email.
          'password' : password
        }
      };

      if(response.statusCode == 200){
        print('Akun berhasil LogIn');

      }else {
        print('failed');
      }
    }catch(e){
      print(e.to.String());
    }
  }
  FocusNode focusNode = FocusNode();
  @override
  void dispose(){
    txtEmail.dispose();
    txtPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Email Pengguna"),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          buildUserName(),

          const SizedBox(height: 20),
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Kata Sandi"),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          buildPassword(),

          const SizedBox(height: 20),
          SizedBox(
            width: 400,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff3167FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, HomePageScreen.routeName);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPassScreen.routeName);
                },
                child: Text(
                  "Lupa Kata Sandi?",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),

        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtEmail,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Email',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      textInputAction: TextInputAction.done,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Kata Sandi',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}