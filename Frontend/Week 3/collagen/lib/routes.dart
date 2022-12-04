import 'package:collagen/Screens/InputData/InputDataScreen.dart';
import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/Screens/Register/SignupScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  InputDataScreen.routeName: (context) => InputDataScreen(),

};
