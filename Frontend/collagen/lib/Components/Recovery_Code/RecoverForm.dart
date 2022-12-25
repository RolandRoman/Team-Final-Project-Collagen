// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Screens/New_Pass/NewPassScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';

class RecoverForm extends StatefulWidget {
  const RecoverForm({super.key});

  @override
  _RecoverForm createState() => _RecoverForm();
}

class _RecoverForm extends State<RecoverForm> {
  String? kode;

  TextEditingController txtKode = TextEditingController();

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
                Text("Kode Pemulihan"),
              ],
            ),
          ),
          buildKode(),
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
                Navigator.pushNamed(context, NewPassScreen.routeName);
              },
              child: const Text(
                "Kirim",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }

  TextFormField buildKode() {
    return TextFormField(
      controller: txtKode,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan kode',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}