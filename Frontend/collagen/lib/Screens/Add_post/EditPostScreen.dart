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
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Apakah anda yakin ingin membuang postingan ini?',
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            Container(
                              width: 230,
                              height: 45,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () => Navigator.pop(context, 'Lanjut'),
                                child: const Text('Lanjut Mengedit',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 230,
                              height: 45,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, HomePageScreen.routeName);
                                },
                                child: const Text('Batal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],

                  ),
                ),
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
                              content: const Text('Apakah anda yakin mengedit postingan ini?'),
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