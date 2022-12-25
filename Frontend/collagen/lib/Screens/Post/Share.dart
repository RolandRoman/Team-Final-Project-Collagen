import 'package:flutter/material.dart';

class ShareBody extends StatefulWidget {
  static String routeName = "/share";

  @override
  _ShareBody createState() => _ShareBody();
}

class _ShareBody extends State<ShareBody> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Comment",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),

        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

    );
  }
}
