import 'package:collagen/Screens/Homepage/HomePageScreen.dart';
import 'package:collagen/Screens/New_Pass/NewPassScreen.dart';
import 'package:collagen/Screens/Recovery_Code/RecoverScreen.dart';
import 'package:collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:collagen/Screens/InputData/InputDataScreen.dart';
import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/Screens/Register/SignupScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  InputDataScreen.routeName: (context) => InputDataScreen(),
  ForgotPassScreen.routeName: (context) => ForgotPassScreen(),
  RecoverScreen.routeName: (context) => RecoverScreen(),
  NewPassScreen.routeName: (context) => NewPassScreen(),
  HomePageScreen.routeName: (context) => HomePageScreen(),
};