import 'package:collagen/Components/Recovery_Code/RecoverComponent.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/material.dart';

class RecoverScreen extends StatelessWidget {
  static String routeName = "/recovery";

  const RecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kode  Pemulihan",
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
      body: RecoverComponent(),
    );
  }
}
