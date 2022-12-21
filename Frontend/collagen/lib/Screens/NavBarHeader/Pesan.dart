import 'package:flutter/material.dart';

class PesanBody extends StatefulWidget {
  static String routeName = "/pesan";

  const PesanBody({super.key});

  @override
  _PesanBody createState() => _PesanBody();
}

class _PesanBody extends State<PesanBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(60),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(49,103, 255, 0.4),
              offset: Offset(0, 4.0),
              blurRadius: 4.0,
            ),
          ]),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              "Pesan",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(
                color: Colors.black
            ),
          ),
        ),
      ),
      body: Text('Pesan'),
    );
  }
}