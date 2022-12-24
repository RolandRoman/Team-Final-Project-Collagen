import 'package:collagen/Screens/Add_Post/AddPostScreen.dart';
import 'package:collagen/Screens/Homepage/HomePageScreen.dart';
import 'package:collagen/Screens/NavBarHeader/Pesan.dart';
import 'package:collagen/Screens/NavBarHeader/Pesan/Chatting.dart';
import 'package:collagen/Screens/New_Pass/NewPassScreen.dart';
import 'package:collagen/Screens/Recovery_Code/RecoverScreen.dart';
import 'package:collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:collagen/Screens/InputData/InputDataScreen.dart';
import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/Screens/Register/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:collagen/Screens/NavBarHeader/Notif.dart';
import 'package:collagen/Screens/Post/Comment.dart';
import 'package:collagen/Screens/NavBarHeader/Search.dart';


final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  InputDataScreen.routeName: (context) => InputDataScreen(),
  ForgotPassScreen.routeName: (context) => ForgotPassScreen(),
  RecoverScreen.routeName: (context) => RecoverScreen(),
  NewPassScreen.routeName: (context) => NewPassScreen(),
  HomePageScreen.routeName: (context) => HomePageScreen(),
  NotifBody.routeName: (context) => NotifBody(),
  SearchBody.routeName: (context) => SearchBody(),
  PesanBody.routeName: (context) => PesanBody(),
  CommentBody.routeName: (context) => CommentBody(),
  AddPostScreen.routeName: (context) => AddPostScreen(),
  ChatBody.routeName: (context) => ChatBody()
};