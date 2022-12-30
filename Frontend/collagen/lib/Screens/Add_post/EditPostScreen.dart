import 'package:flutter/material.dart';

import '../Homepage/HomePageScreen.dart';

class EditPostScreen extends StatelessWidget {
  static String routeName = "/edit_post";

  const EditPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.square(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(49, 103, 255, 0.3),
                offset: Offset(0, 5.0),
                blurRadius: 4.0,
              ),
            ]),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                "Edit Postingan",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: false,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/Picture1.png",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Shafwan Ramadhan',
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      TextButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: const Text('Apakah anda yakin membagikan postingan ini?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) {
                                        return HomePageScreen();
                                      },
                                    ));
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Color(0xff3167FF),
                            ),
                            child: const Text(
                              'Post',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 15, top: 20, right: 15),
                                hintText: "Apa Yang anda pikirkan?"
                            ),
                            style: TextStyle(fontSize: 20),
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                      width: 400,
                      child: Row(
                        children: [
                          IconButton(
                              alignment: AlignmentDirectional.centerStart,
                              onPressed: (){},
                              icon: Icon(Icons.image)
                          ),
                          IconButton(
                              alignment: AlignmentDirectional.centerStart,
                              onPressed: (){},
                              icon: Icon(Icons.videocam_sharp)
                          ),
                          IconButton(
                              alignment: AlignmentDirectional.centerStart,
                              onPressed: (){},
                              icon: Icon(Icons.emoji_emotions)
                          ),
                        ],
                      )
                  ),

                ],

              ),

            ),

          ],
        ),
      ),
    );
  }
}