import 'package:collagen/Components/New_Pass/NewPassComponent.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/material.dart';

class NewPassScreen extends StatelessWidget {
  static String routeName = "/newpass";

  const NewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kata Sandi Baru",
        ),
        // ignore: prefer_const_constructors
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: NewPassComponent(),
    );
  }
}