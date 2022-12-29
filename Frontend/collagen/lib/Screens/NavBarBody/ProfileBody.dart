import 'package:flutter/material.dart';

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
      ),
    );
  }
}