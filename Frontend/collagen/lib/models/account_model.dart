// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../utils/api_service.dart';
import 'package:intl/intl.dart';

class AccountModel {
  dynamic id;
  String email;
  String name;
  String password;
  String address;
  String status;
  String phone_number;
  String access_level;
  String date_of_birth;
  String gender;
  String university;
  String major;

  String profile_picture_url;
  String profile_picture_thumb_url;

  AccountModel({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    required this.address,
    required this.status,
    required this.phone_number,
    required this.access_level,
    required this.date_of_birth,
    required this.gender,
    required this.university,
    required this.major,
    required this.profile_picture_url,
    required this.profile_picture_thumb_url,
  });

  Map<String, dynamic> toJson() => {
        if (id != null) 'id': '${id}',
        if (address != null) 'address': address,
        if (date_of_birth != null) 'date_of_birth': date_of_birth,
        //if (email != null) 'email': email,
        'email': email == null ? '' : email,
        if (phone_number != null) 'phone_number': phone_number,
        if (name != null) 'name': name,
        if (password != null) 'password': password,
        if (access_level != null) 'access_level': access_level,
        if (gender != null) 'gender': gender,

        if (university != null) 'university': university,
        if (major != null) 'major': major,

        if (profile_picture_url != null)
          'profile_picture_url': profile_picture_url,
        if (profile_picture_thumb_url != null)
          'profile_picture_thumb_url': profile_picture_thumb_url,
      };

  factory AccountModel.fromSession(String jsonString) {
    Map<String, dynamic> data = json.decode(jsonString);
    return AccountModel(
      id: data['id'],
      address: data['address'],
      date_of_birth: data['date_of_birth'],
      email: data['email'],
      phone_number: data['phone_number'],
      name: data['name'],
      password: data['password'],
      access_level: data['access_level'],
      gender: data['gender'],
      university: data['university'],
      major: data['major'],
      profile_picture_url: data['profile_picture_url'],
      profile_picture_thumb_url: data['profile_picture_thumb_url'],
      status: data['status'],
    );
  }

  factory AccountModel.fromAuthJson(Map<String, dynamic> json) => AccountModel(
        id: json['id'],
        address: json['address'],
        date_of_birth: json['date_of_birth'],
        name: json['name'] == null ? json['lm_username'] : json['name'],
        password: json['password'],
        email: json['email'],
        phone_number: json['lm_phone'],
        access_level: json['access_level'],
        gender: json['gender'],
        university: json['university'],
        major: json['major'],
        profile_picture_url: json['profile_picture_url'],
        profile_picture_thumb_url: json['profile_picture_thumb_url'],
        status: json['status'],
      );
}
