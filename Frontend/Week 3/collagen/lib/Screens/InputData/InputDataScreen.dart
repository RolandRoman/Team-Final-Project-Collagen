import 'package:collagen/Components/Datainput/InputDataComponent.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/material.dart';

class InputDataScreen extends StatelessWidget {
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
       body: InputDataComponent(),
    );
  }
}