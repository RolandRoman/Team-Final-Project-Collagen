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
                  padding: EdgeInsets.symmetric(
                      horizontal: (20)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        const SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:"Kami telah mengirim kode  pemulihan ke ",
                                        style: TextStyle(
                                            color: CupertinoColors.black,
                                            fontSize: 15
                                        ),
                                      ),
                                      TextSpan(
                                        text:"sawadikap@gmail.com. ",
                                        style: TextStyle(
                                            color: CupertinoColors.black,
                                            fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      TextSpan(
                                        text:"Silahkan cek di kotak masuk pada E-mail tersebut.",
                                        style: TextStyle(
                                            color: CupertinoColors.black,
                                            fontSize: 15
                                        ),
                                      ),
                                    ]
                                  ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                            height: 10
                        ),
                        RecoverForm()
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