import 'package:collagen/Components/Recovery_Code/RecoverForm.dart';
import 'package:collagen/size_config.dart';
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

                const SizedBox(height: 20),
                RecoverForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}