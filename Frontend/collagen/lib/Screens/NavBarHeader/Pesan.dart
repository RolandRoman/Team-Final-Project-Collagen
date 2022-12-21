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
    return const Scaffold(
      body: Text('Pesan'),
    );
  }
}