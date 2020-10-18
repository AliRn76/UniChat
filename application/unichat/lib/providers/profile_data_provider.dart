import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

import 'package:unichat/models/user_model.dart';
import 'package:unichat/sqlite/database_helper.dart';
import 'package:unichat/utils/requests_utils.dart';

class ProfileDataProvider extends ChangeNotifier {

  ProfileDataProvider(){
//    selectUserProfile();
    getUserProfile();
  }
//
//  User _userProfile = User(
//      "Admin", "Ali", "Rn", "", "", "",
//      "", "", "","" , true,
//      "", "", "", "", 0,
//  "", "", "", "", "", "", "", "", Color(0xA3D1FF), Color(0x000000), "assets/images/nature-background.jpg", 6  );
  User _userProfile = User(
      "Admin", "Ali", "Rn", "alirn76@yahoo.com", "09037853055", "assets/images/Michael B Jordan.png",
      "I'm Just a Programmer , What do you want to know about me , dm me :)", "Ali_Rn_", "Al1Rn", "2020-12-25", false,
      "Iran", "Tehran", "IAU TNB", "IT", 1395,
      "Programmer", "Taekwondo", "Harry Potter", "Warrior", "The Flash", "HoN", "No Where", "Dar Vaghe", Color(0xA3D1FF), Color(0x000000), "assets/images/nature-background.jpg", 6  );

  User get userProfile => _userProfile;

  set userProfile(User value){
    _userProfile = value;
    notifyListeners();
  }


  /// Select Token
  Future<String> selectToken()async{
    var result = await DatabaseHelper().selectToken();
    return result[0]['Token'];
  }

  /// Select user from db
  void selectUserProfile() async{
    var result = await DatabaseHelper().selectMyProfile();
    print("ProfileDataProvider, Select User From DB Result: $result");
    userProfile = User.fromJson(result[0]);
  }

  void getUserProfile() async{
    try{
      Map<String, String> reqHeader = {"Authorization": "Token ${await selectToken()}"};
      Response response = await get(MY_PROFILE_URL, headers:reqHeader);
      print("- Get MyProfile Status: ${response.statusCode}");
      var data = await jsonDecode(utf8.decode(response.bodyBytes));
      print(data);
      User myProfile = User.fromJson(data);
      validateData(myProfile);
      // Add the items in local db
//      if (response.statusCode == 200){
//        var result = await DatabaseHelper().insertMyProfile(my_profile);
//        print("*Insers db Result: $result");
//      }
    }catch (e){
      print("- Get MyProfile Error $e");
      Future.delayed(const Duration(seconds: 5), () {
//        requestItems();
      });
    }
  }

  void validateData(User _user){
    print("- Validate MyProfile Data");

    if(_user.background_opacity == null)
      _user.background_opacity = 6;

    if(_user.background_color == null)
      _user.background_color = Color(0xA3D1FF);

    if(_user.font_color == null)
      _user.font_color = Color(0x000000);

    if(_user.background_image == null)
      _user.background_image = "assets/images/nature-background.jpg";

    if(_user.background_opacity == null)
      _user.background_opacity = 6;

//    _userProfile = _user;
    notifyListeners();
  }

  String getFullName() {
    String fullName;
    if(userProfile.first_name != null)
      if(userProfile.last_name != null)
        fullName = userProfile.first_name + " " + userProfile.last_name;
      else
        fullName = userProfile.first_name;
    else
      fullName = '';
    return fullName;
  }

  String getAge() =>
      "22";

  String getLocation(){
    if(userProfile.city != null)
      return userProfile.city;

    else if(userProfile.country != null)
      return userProfile.country;

    else
      return '';
  }

  String getPhonenumber(){
    if(userProfile.phone_number != null)
      return userProfile.phone_number;
    else
      return '';
  }

  String getBio(){
    if(userProfile.bio != null)
      return userProfile.bio;
    else
      return '';
  }

  String getUsername(){
    if(userProfile.username != null)
      return userProfile.username;
    else
      return '';
  }

  String getInstagram(){
    if(userProfile.instagram != null)
      return userProfile.instagram;
    else
      return '';
  }
  String getTelegram(){
    if(userProfile.telegram != null)
      return userProfile.telegram;
    else
      return '';
  }

  String getSport(){
    if(userProfile.favorite_sport != null)
      return userProfile.favorite_sport;
    else
      return '';
  }

  String getBook(){
    if(userProfile.favorite_book != null)
      return userProfile.favorite_book;
    else
      return '';
  }

  String getMovie(){
    if(userProfile.favorite_movie != null)
      return userProfile.favorite_movie;
    else
      return '';
  }

  String getTvSeries(){
    if(userProfile.favorite_tv_series != null)
      return userProfile.favorite_tv_series;
    else
      return '';
  }

  String getGame(){
    if(userProfile.favorite_game != null)
      return userProfile.favorite_game;
    else
      return '';
  }

  String getToTravel(){
    if(userProfile.favorite_to_travel != null)
      return userProfile.favorite_to_travel;
    else
      return '';
  }

  String getMusic(){
    if(userProfile.favorite_music != null)
      return userProfile.favorite_music;
    else
      return '';
  }

  String getJob(){
    if(userProfile.job != null)
      return userProfile.job;
    else
      return '';

  }

  void setBackgroundColor(Color value){
    _userProfile.background_color = value;
    notifyListeners();
  }
  void setFontColor(Color value){
    _userProfile.font_color = value;
    notifyListeners();
  }
  void setOpacity(int value){
    _userProfile.background_opacity = value;
    notifyListeners();
  }
}


//TODO: hame get ha beran too ye file e dg


//TODO: baghie ye provider ro baad az tamom kardan UI bzanam