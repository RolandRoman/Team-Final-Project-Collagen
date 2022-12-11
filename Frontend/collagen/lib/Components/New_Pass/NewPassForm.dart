import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassForm extends StatefulWidget {
  const NewPassForm({super.key});

  @override
  _NewPassForm createState() => _NewPassForm();
}

class _NewPassForm extends State<NewPassForm> {
  String? pass;

  TextEditingController txtPassword = TextEditingController();

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
                Text("Kata Sandi Baru"),
              ],
            ),
          ),
          buildKode(),
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
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: const Text(
                "Simpan",
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
                "assets/images/Vector_newpass.png",
                alignment: Alignment.bottomLeft,
                cacheHeight: 200,
                cacheWidth: 350,
              ),
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildKode() {
    return TextFormField(
      controller: txtPassword,
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