// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Components/Recovery_Code/RecoverForm.dart';
import 'package:flutter/cupertino.dart';

class RecoverComponent extends StatefulWidget {
  const RecoverComponent({super.key});

  @override
  _RecoverComponent createState() => _RecoverComponent();
}

class _RecoverComponent extends State<RecoverComponent> {
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
                          height: 30,
                        ),

                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Kami telah mengirim kode  pemulihan ke sawadikap@gmail.com. Silahkan cek di kotak masuk pada E-mail tersebut.",
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

                        const SizedBox(
                            height: 10
                        ),
                        const RecoverForm()
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
    );
  }
}