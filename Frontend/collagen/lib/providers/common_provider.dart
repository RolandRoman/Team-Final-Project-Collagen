import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../utils/session.dart';
import '../utils/api_service.dart';
// import '../models/account_model.dart';

class CommonProvider extends ChangeNotifier {
  Future<bool> auth(String email, String password) async {
    final url = Uri.parse('${api_service.SOCMED_END_POINT}/auth/login');
    final response =
        await http.post(url, body: {'email': email, 'password': password});

    print('${url} ${response.body}');

    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      if (result['success']) {
        await Session.set(Session.USERID_SESSION_KEY, email);
        await Session.set(Session.TOKEN_SESSION_KEY, result['token']);
        await Session.set(Session.PASSWD_KEY, password);
        await Session.set(
            Session.REASON, result['reason'] == null ? '' : result['reason']);

        //await getMyProfile();
        return true;
      }
    }
    return false;
  }

  Future<dynamic> register(
      String name, String username, String email, String password) async {
    final url = Uri.parse('${api_service.SOCMED_END_POINT}/auth/register');
    final response = await http.post(url, body: {
      'name': name,
      'username': username,
      'email': email,
      'password': password
    });

    print('${url} ${response.body}');

    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      if (result['success']) {
        await Session.set(Session.USERID_SESSION_KEY, email);
        await Session.set(Session.TOKEN_SESSION_KEY, result['token']);
        await Session.set(Session.PASSWD_KEY, password);
        await Session.set(
            Session.REASON, result['reason'] == null ? '' : result['reason']);

        return true;
      }
    }
    return false;
  }

  Future<dynamic> forgotpassword(String email) async {
    final url =
        Uri.parse('${api_service.SOCMED_END_POINT}/auth/forgot-password');
    final response = await http.post(url, body: {'email': email});

    print('${url} ${response.body}');

    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      if (result['success']) {
        await Session.set(Session.USERID_SESSION_KEY, email);
        await Session.set(
            Session.REASON, result['reason'] == null ? '' : result['reason']);

        return true;
      }
    }
    return false;
  }

  Future<dynamic> changepassword(String email, String password) async {
    final url =
        Uri.parse('${api_service.SOCMED_END_POINT}/auth/change-password');
    final response = await http.post(url, body: {
      'email': email,
      'password': password,
    });

    print('${url} response.body');

    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      if (result['success']) {
        await Session.set(Session.USERID_SESSION_KEY, email);
        await Session.set(Session.PASSWD_KEY, password);
        await Session.set(
            Session.REASON, result['reason'] == null ? '' : result['reason']);

        return true;
      }
      return true;
    }

    Future<dynamic> user(String email, String password, String username) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user');
      final response = await http.post(url,
          body: {'email': email, 'password': password, 'username': username});

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        if (result['success']) {
          await Session.set(Session.USERID_SESSION_KEY, email);
          await Session.set(Session.PASSWD_KEY, password);
          await Session.set(Session.USERNAME_KEY, username);
          await Session.set(
              Session.REASON, result['reason'] == null ? '' : result['reason']);

          //await getMyProfile();
          return true;
        }
        return true;
      }
    }

    Future<dynamic> university(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user/university');
      final response = await http.post(url, body: {
        'name': name,
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        if (result['success']) {
          await Session.set(Session.NAME_KEY, name);
          await Session.set(
              Session.REASON, result['reason'] == null ? '' : result['reason']);

          //await getMyProfile();
          return true;
        }
        return true;
      }
    }

    Future<dynamic> major(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user/major');
      final response = await http.post(url, body: {
        'name': name,
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        if (result['success']) {
          await Session.set(Session.NAME_KEY, name);
          await Session.set(
              Session.REASON, result['reason'] == null ? '' : result['reason']);

          //await getMyProfile();
          return true;
        }
        return true;
      }
    }

    Future<dynamic> friendslist(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user/friend-list');
      final response = await http.post(url,
          body: {'user_id': 0, 'target_user_id': 0, 'is_friend': true});

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        if (result['success']) {
          await Session.set(
              Session.REASON, result['reason'] == null ? '' : result['reason']);

          return true;
        }
        return true;
      }
    }

    Future<dynamic> blocklist(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user/block-list');
      final response = await http.post(url,
          body: {'user_id': 0, 'target_user_id': 0, 'is_blocked': true});

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        if (result['success']) {
          await Session.set(
              Session.REASON, result['reason'] == null ? '' : result['reason']);

          return true;
        }
        return true;
      }
    }
  }



   // }else{
   //   throw Exception();
    */
  }
   return null;
 }

}
