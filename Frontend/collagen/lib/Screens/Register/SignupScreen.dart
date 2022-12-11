import 'package:collagen/Components/Register/SignupComponent.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SignupComponent(),
    );
  }
}