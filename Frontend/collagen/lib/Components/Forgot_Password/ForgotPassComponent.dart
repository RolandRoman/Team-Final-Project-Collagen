import 'package:collagen/Components/Forgot_Password/ForgotPassForm.dart';
import 'package:collagen/size_config.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
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

                ForgotPassForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}