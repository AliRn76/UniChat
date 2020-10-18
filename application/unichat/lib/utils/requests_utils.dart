
import 'package:unichat/sqlite/database_helper.dart';



String SIGNUP_URL = "http://192.168.1.7:8000/user/api/signup/";
String LOGIN_URL = "http://192.168.1.7:8000/user/api/login/";
String MY_PROFILE_URL = "http://192.168.1.7:8000/user/api/profile/";

Map<String, String> NORMAL_HEADER = {"Content-type": "application/json", "Accept": "application/json"};

Future<Map<String, String>> ATHENTICATED_HEADER()async =>
    {"Authorization": "Token ${await selectToken()}"};


Future<String> selectToken()async{
  var result = await DatabaseHelper().selectToken();
  return result[0]['Token'];
}

