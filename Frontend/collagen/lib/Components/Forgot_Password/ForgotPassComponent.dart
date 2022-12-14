// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Components/Forgot_Password/ForgotPassForm.dart';
import 'package:flutter/cupertino.dart';

class ForgotPassComponent extends StatefulWidget {
  const ForgotPassComponent({super.key});

  @override
  _ForgotPassComponent createState() => _ForgotPassComponent();
}

class _ForgotPassComponent extends State<ForgotPassComponent> {
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
                          height: 40,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Masukkan email yang terdaftar ketika anda melakukan registrasi akun.",
                                style: TextStyle(
                                    color: CupertinoColors.black,
                                    fontSize: 15
                                ),
                                softWrap: true,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const ForgotPassForm()
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                Image.asset(
                  "assets/images/Vector_newpass.png",
                  scale: 0.8,
                ),
              ],
            ),
          ),
        ),
      );
  }
}