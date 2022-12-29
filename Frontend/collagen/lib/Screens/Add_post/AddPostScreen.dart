import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  static String routeName = "/add_post";

  const AddPostScreen({super.key});

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
                color: Colors.grey,
                offset: Offset(0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                "Buat Postingan",
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
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}