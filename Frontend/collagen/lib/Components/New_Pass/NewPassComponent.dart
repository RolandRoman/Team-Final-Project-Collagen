// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Components/New_Pass/NewPassForm.dart';
import 'package:flutter/cupertino.dart';

class NewPassComponent extends StatefulWidget {
  const NewPassComponent({super.key});

  @override
  _NewPassComponent createState() => _NewPassComponent();
}

class _NewPassComponent extends State<NewPassComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: (0)),
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
                          height: 30,
                        ),

                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Buat kata sandi baru dengan minimal 6 karakter. Anda memerlukan kata sandi ini untuk login ke akun Anda.",
                                style: TextStyle(
                                    color: CupertinoColors.black,
                                    fontSize: 15
                                ),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),
                        const NewPassForm()
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/Vector_newpass.png",
                  scale: 0.8,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}