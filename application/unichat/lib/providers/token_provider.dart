
import 'package:flutter/material.dart';
import 'package:unichat/sqlite/database_helper.dart';
import 'package:http/http.dart';

class TokenProvider extends ChangeNotifier {

  TokenProvider();

  String _token;

  String get token => _token;

  set token(String value){
    _token = value;
    notifyListeners();
  }

  Future<bool> checkToken() async{
    var result = await DatabaseHelper().selectToken();
    if(result.isNotEmpty){
      token = result.first['Token'];
      return true;
    }else
      return false;
  }
}