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

  // Future<dynamic> codeVerification(String phone, String verificationCode) async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/otp');
  //   final response = await http.post(url, body: {
  //     'phone': phone,
  //     'otp': verificationCode,
  //   });

  //   print('${url} response.body');

  //   final result = json.decode(response.body);
  //   if (response.statusCode == 200) {
  //     return result;
  //   }
  //   return null;
  // }

  // Future<bool> changePassword(String oldPassword, String password) async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/account/change_password');
  //   final response = await http.patch(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   }, body: {
  //     'oldpassword': oldPassword,
  //     'password': password,
  //   });

  //   print('${url} response.body');

  //   final result = json.decode(response.body);
  //   if (response.statusCode == 200) {
  //     return true;
  //   }
  //   return false;
  // }

  // Future<bool> updateFcmToken(String fcmId) async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/profile/fcmtoken');
  //   final response = await http.patch(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   }, body: {
  //     'fcm_android': fcmId,
  //   });

  //   print('${url} ${response.body}');

  //   final result = json.decode(response.body);

  //   if (response.statusCode == 200) {
  //     return true;
  //   }
  //   return false;
  // }

  // Future<AccountModel> getMyProfile() async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/view_profile');
  //   final response = await http.get(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   });

  //   print('${url} ${response.body}');
  //   if(response.statusCode == 200){
  //     final result = json.decode(response.body);
  //     if(result['auth'] != null && !result['auth']){
  //       return null;
  //     }
  //     AccountModel accountModel = AccountModel.fromAuthJson(result);
  //     if(accountModel != null){
  //       await Session.set(Session.ACCOUNT_SESSION_KEY, json.encode(accountModel));
  //       return accountModel;
  //     }
  //   // }else{
  //   //   throw Exception();
  //   }
  //   return null;
  // }

  // Future<dynamic> updateProfile(AccountModel accountModel) async {
  //   print(accountModel.toJson());

  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/update_profile');
  //   final response = await http.post(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   }, body: accountModel.toJson());

  //   print('${url} ${response.body}');
  //   if(response.statusCode == 200){
  //     final result = json.decode(response.body);
  //     await Session.set(Session.ACCOUNT_SESSION_KEY, json.encode(accountModel));
  //     return result;
  //   }
  //   return null;
  // }

  // Future<dynamic> uploadFile(String path) async {
  //   final url = Uri.parse("${api_service.SOCMED_END_POINT}/v2/upload_image");

  //   final request = http.MultipartRequest('POST', url)
  //     ..headers['Authorization']="Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}";

  //   if(path.isNotEmpty){
  //       request
  //         ..files.add(await http.MultipartFile.fromPath('avatar', path));
  //   }

  //   final response = await request.send();
  //   var responseString = await response.stream.bytesToString();
  //   if(response.statusCode == 200){
  //     print('${url} ${responseString}');
  //     return json.decode(responseString);
  //   }
  //   return null;
  // }

  // Future<dynamic> getImage(String path) async {
  //   final url = Uri.parse("${api_service.SOCMED_END_POINT}/v2/get_image?path="+path);
  //   final response = await http.get(url, headers: {
  //     "Content-Type":"application/x-www-form-urlencoded"
  //   });

  //   print('${url} ${response.body}');

  //   /*
  //   final request = http.MultipartRequest('GET', url)
  //     ..headers['Content-Type']="application/x-www-form-urlencoded"
  //     ..fields['path']=path;

  //   final response = await request.send();
  //   var responseString = await response.stream.bytesToString();
  //   print(responseString);
  //   // if(response.statusCode == 200){
  //   //   print('${url} ${responseString}');
  //   //   return json.decode(responseString);
  //   // }
  //   return null;
  //    */
  // }

  // Future<void> storeFcm(String fcmId) async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/store_fcm');
  //   final response = await http.post(url, headers: {
  //   "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   }, body: {
  //     "fcm_id":fcmId,
  //     "agent":"Redmi Xiomi"
  //   });
  //   print('${url} ${response.body}');
  // }

  // Future<String> genQrcode() async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/gen_qrcode');
  //   final response = await http.get(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   });
  //   print('${url} {response.body}');
  //   if(response.statusCode == 200){
  //     return response.body?.replaceAll("data:image/png;base64,", "");
  //   }
  //   return null;

  // }

  // Future<dynamic> ubahPin(String pinLama, String pinBaru) async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/ubah_pin');
  //   final response = await http.post(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   }, body: {
  //     "pin_lama":pinLama,
  //     "pin_baru":pinBaru
  //   });
  //   print('${url} ${response.body}');
  //   if(response.statusCode == 200){
  //     return json.decode(response.body);
  //   }
  //   return null;
  // }

  // Future<dynamic> getMyPoint() async {
  //   final url = Uri.parse('${api_service.SOCMED_END_POINT}/v2/total_point');
  //   final response = await http.get(url, headers: {
  //     "Authorization":"Bearer ${await Session.get(Session.TOKEN_SESSION_KEY)}"
  //   });

  //   print('${url} ${response.body}');
  //   if(response.statusCode == 200){
  //     return json.decode(response.body)['total_point'];
  //     /*
  //     final result = json.decode(response.body);
  //     if(result['auth'] != null && !result['auth']){
  //       return null;
  //     }
  //     AccountModel accountModel = AccountModel.fromAuthJson(result);
  //     if(accountModel != null){
  //       await Session.set(Session.ACCOUNT_SESSION_KEY, json.encode(accountModel));
  //       return accountModel;
  //     }
  //     // }else{
  //     //   throw Exception();
  //      */
  //   }
  //   return null;
  // }

}
