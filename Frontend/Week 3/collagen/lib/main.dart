import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/SplashScreen_View.dart';
import 'package:collagen/routes.dart';
import 'package:collagen/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Collagen",
    theme: theme(),
    home: SplashScreenPage(),
    routes: routes,
  ));
}
