import 'package:collagen/Components/Datainput/InputDataComponent.dart';
import 'package:flutter/material.dart';

class InputDataScreen extends StatelessWidget {
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
      ),
       body: InputDataComponent(),
    );
  }
}