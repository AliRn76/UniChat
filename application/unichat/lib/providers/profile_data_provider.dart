import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

import 'package:unichat/models/user_model.dart';
import 'package:unichat/sqlite/database_helper.dart';

class ProfileDataProvider extends ChangeNotifier {

  ProfileDataProvider(){}

  User _user = User(
    "Admin", "Ali", "Rn", "alirn76@yahoo.com", "09037853055", "assets/images/Michael B Jordan.png",
      "There is no bio", "Ali_Rn_", "Al1Rn", DateTime.now(), false,
      "Iran", "Tehran", "IAU TNB", "IT", 1395,
      "Programmer", "Taekwondo", "Harry Potter", "Warrior", "The Flash", "HoN", "No Where", "Dar Vaghe", Color(0xA3D1FF), Color(0x000000), "assets/images/nature-background.jpg", 6  );

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

  void setBackgroundColor(Color value){
    _user.background_color = value;
    notifyListeners();
  }
  void setFontColor(Color value){
    _user.font_color = value;
    notifyListeners();
  }
}



//TODO: baghie ye provider ro baad az tamom kardan UI bzanam