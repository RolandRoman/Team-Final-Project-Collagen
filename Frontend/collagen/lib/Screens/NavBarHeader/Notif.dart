import 'package:flutter/material.dart';

class NotifBody extends StatefulWidget {
  static String routeName = "/notif";

  const NotifBody({super.key});

  @override
  _NotifBody createState() => _NotifBody();
}

class _NotifBody extends State<NotifBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Notif'),
    );
  }
}