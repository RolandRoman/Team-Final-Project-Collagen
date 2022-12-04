import 'package:collagen/Components/Datainput/InputDataForm.dart';
import 'package:collagen/size_config.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
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

                const SizedBox(height: 20),
                InputDataForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
