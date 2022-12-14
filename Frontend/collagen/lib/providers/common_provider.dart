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

    Future<dynamic> getuser(String contentId) async {
      final url = Uri.parse("${api_service.SOCMED_END_POINT}/user");
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getuserid(String contentId) async {
      final url = Uri.parse("${api_service.SOCMED_END_POINT}/user/{id}");
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> userid(String email, String password,
        String username) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user/{id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'email': email,
        'password': password,
        'username': username
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    }

    //DELETE

    Future<dynamic> getuserbiodata(String contentId) async {
      final url = Uri.parse("${api_service.SOCMED_END_POINT}/user-biodata");
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getuserbiodataid(String contentId) async {
      final url = Uri.parse(
          '${api_service.SOCMED_END_POINT}/user-biodata/{id}');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> user_biodata(String name, String birthday,
        String gender) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/user-bioata/{id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'name': name,
        'date_of_birth': birthday,
        'gender': gender,
        'university_id': 0,
        'major_id': 0
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
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

          return true;
        }
        return true;
      }
    }

    Future<dynamic> getuniversity() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/university');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getuniversityid() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/university/{id}');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> university_id(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/university/{id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'name': name,
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    }

    //DELETE

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

    Future<dynamic> getmajor() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/major');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getmajorid() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/major/{id}');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> majorid(String name) async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/majory/{id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'name': name,
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    }

    //DELETE

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

    Future<dynamic> getfriendlist() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/friend-list');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getfriend_target() async {
      final url = Uri.parse(
          '${api_service
              .SOCMED_END_POINT}/friend-list/{user_id}&{target_user_id }');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> friendlist_targetlist(String name) async {
      final url = Uri.parse(
          '${api_service
              .SOCMED_END_POINT}/friend-list/{user_id}&{target_user_id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'is friend': true
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
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

    Future<dynamic> getblocklist() async {
      final url = Uri.parse('${api_service.SOCMED_END_POINT}/block-list');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> getblock_target(String userid, String targetid) async {
      final url = Uri.parse(
          '${api_service
              .SOCMED_END_POINT}/block-list/{user_id}&{target_user_id}');
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      });

      print('${url} ${response.body}');
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return result.fromJson(result);
      } else {
        return null;
        throw Exception();
      }
    }

    Future<dynamic> blocklist_targetlist(String name) async {
      final url = Uri.parse(
          '${api_service
              .SOCMED_END_POINT}/block-list/{user_id}&{target_user_id}');
      final response = await http.patch(url, headers: {
        "Authorization": "Bearer ${await Session.get(
            Session.TOKEN_SESSION_KEY)}"
      }, body: {
        'is friend': true
      });

      print('${url} response.body');

      final result = json.decode(response.body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    }

    //DELETE

  }
}
