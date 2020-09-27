import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

import 'package:unichat/models/user_model.dart';
import 'package:unichat/sqlite/database_helper.dart';

class ProfileProvider extends ChangeNotifier {

  ProfileProvider(){}

  User _user;

  User get user => _user;

  set user(User value){
    _user = value;
    notifyListeners();
  }

  // Select user from db
  void selectUser() async{
    var result = await DatabaseHelper().selectUser();
    print("In Provider, Select User From DB Result: $result");
    user = User.fromJson(result[0]);
  }
}



//TODO: baghie ye provider ro baad az tamom kardan UI bzanam