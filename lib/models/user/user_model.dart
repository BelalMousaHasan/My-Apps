import 'package:flutter/material.dart';

class UserModel {
  late int  id;
  late String name;
  late String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}