// ignore_for_file: file_names

import 'package:project_collagen/Screens/Recovery_Code/RecoverScreen.dart';
import 'package:project_collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  _ForgotPassForm createState() => _ForgotPassForm();
}

class _ForgotPassForm extends State<ForgotPassForm> {
  String? email;

  TextEditingController txtEmail = TextEditingController();

  FocusNode focusNode = FocusNode();

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
                Text("E-Mail"),
              ],
            ),
          ),
          buildEmail(),
          const SizedBox(height: 20),
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
              onPressed: () {
                Navigator.pushNamed(context, RecoverScreen.routeName);
              },
              child: const Text(
                "Verifikasi",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          
          const SizedBox(
            height: 240,
          ),
          Stack(
            children: [

              Image.asset(
                "assets/images/vektor_signin.png",
                alignment: Alignment.bottomLeft,
                cacheHeight: 190,
                cacheWidth: 350,
              ),
              Image.asset(
                  "assets/images/vector_inputdata.png",
                  alignment: Alignment.bottomLeft,
                  cacheHeight: 190,
                  cacheWidth: 350,
              )
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
