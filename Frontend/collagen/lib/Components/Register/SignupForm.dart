import 'package:collagen/Components/Register/syarat_dan_ketentuan/PolicyDialog.dart';
import 'package:collagen/Screens/InputData/InputDataScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  _SignupForm createState() => _SignupForm();
}

class _SignupForm extends State<SignupForm> {
  String? username;
  String? telephone_number;
  String? email_mahasiswa;
  String? password;
  bool? setuju = false;

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtTelephoneNumber = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  FocusNode focusNode = FocusNode();
  bool isChecked = false;

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
                Text("Nama Pengguna"),
              ],
            ),
          ),
          buildUserName(),
          const SizedBox(height: 20),
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Nomor Telepon"),
              ],
            ),
          ),
          buildTelephoneNumber(),
          const SizedBox(height: 20),
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("E-mail"),
              ],
            ),
          ),
          buildEmailMahasiswa(),
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
          buildPassword(),
          const SizedBox(height: 20),
          Container(
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
                Navigator.pushNamed(context, InputDataScreen.routeName);
              },
              child: const Text(
                "Daftar",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: setuju,
                  onChanged: (value) {
                    setState(() {
                      setuju = value;
                    });
                  }),
              Expanded(
                child: RichText(
                    text: TextSpan(
                  children: [
                    const TextSpan(
                        text: "Saya setuju dengan semua ",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return PolicyDialog(
                                  mdFileName: 'snk.md',
                                );
                              },
                            );
                          },
                        text: "syarat dan ketentuan",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const TextSpan(
                        text: " serta ",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return PolicyDialog(
                                  mdFileName: 'kp.md',
                                );
                              },
                            );
                          },
                        text: "Kebijakan privasi",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const TextSpan(
                        text: " yang berlaku",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                )),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
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
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: 'Masukkan Nama Pengguna',
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildTelephoneNumber() {
    return TextFormField(
      controller: txtTelephoneNumber,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: 'Masukkan Nomor Telepon',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailMahasiswa() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: 'Contoh: xxxxx_1234@mhs.unj.ac.id',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
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
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: 'Masukkan Kata Sandi',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
