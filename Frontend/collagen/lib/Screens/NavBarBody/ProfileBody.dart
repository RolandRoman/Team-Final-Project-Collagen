import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class MoreBody extends StatefulWidget {
  const MoreBody({super.key});

  @override
  _MoreBody createState() => _MoreBody();
}

class _MoreBody extends State<MoreBody> {
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
                offset: Offset(0, 2.0),
                blurRadius: 4.0,
              )
            ]),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                  "Profile"
              ),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:  Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,

                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Picture1.png",
                            scale: 0.45,

                          ),
                          Column(
                            children: [
                              Title(
                                color: Colors.white,
                                child: const Text(
                                  "Muhammad Shafwan Maulana",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const Text(
                                "Universitas Indonesia",
                                style: TextStyle(
                                    fontSize: 15,
                                  color: Colors.white
                                ),
                                textAlign: TextAlign.left,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,

                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.edit,
                                      size: 24.0,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Profile',
                                      style: TextStyle(
                                        color: Colors.blue
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(

              ),
            ],
          ),
        ),
      ),
    );
  }
}