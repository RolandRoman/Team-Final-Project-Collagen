// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:collagen/Components/Datainput/InputDataForm.dart';
import 'package:flutter/cupertino.dart';

class InputDataComponent extends StatefulWidget {
  const InputDataComponent({super.key});

  @override
  _InputDataComponent createState() => _InputDataComponent();
}

class _InputDataComponent extends State<InputDataComponent> {
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
                      horizontal: (20)
                  ),
                  child: Column(
                    children: [
                      DefaultTextStyle.merge(
                        style: const TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                        child: Row(
                          children: const [
                            Text("Selamat Datang,"),
                          ],
                        ),
                      ),
                      DefaultTextStyle.merge(
                        style: const TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                        child: Row(
                          children: const [
                            Text("Username")
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              "Lengkapi biodata di bawah untuk menyelesaikan proses registrasi.",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 13
                              ),
                              softWrap: true,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),
                      const InputDataForm()
                    ],

                  ),

                ),
                Image.asset(
                  "assets/images/vector_inputdata.png",
                  scale: 0.8,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
