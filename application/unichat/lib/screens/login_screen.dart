import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/connection_provider.dart';
import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/screens/signup_screen.dart';
import 'package:unichat/sqlite/database_helper.dart';
import 'package:unichat/utils/requests_utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color kPrimaryColor = Color(0xFF66c2ff);
//  String password;
//  String username;
//  bool isSignup = false;
//  bool isLogin = false;
  bool obscureText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ConnectionProvider connectionProvider = Provider.of<ConnectionProvider>(context);

    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      textInputAction: TextInputAction.done,
                      controller: usernameController,
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        hintText: "Username",
                        labelText: "username",
                        border: InputBorder.none,
                      ),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      obscureText: obscureText,
                      controller: passwordController,
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        hintText: "Password",
                        icon: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ),
                          onPressed: () => showPassword(),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: size.width * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot password?")
                      ],
                    ),
                    SizedBox(height: size.width * 0.05),
                    Center(
                      child: Container(
                        width: size.width * 0.9,
                        height: size.width * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: FlatButton(
                          onPressed: () => login(connectionProvider),
                          child: Text("Login"),
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.02),
                    Row(
                      children: [
                        Flexible(
                            flex: 4,
                            child: Divider(thickness: 2,)
                        ),
                        Flexible(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("or"),
                            )
                        ),
                        Flexible(
                            flex: 4,
                            child: Divider(thickness: 2,)
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: size.width * 0.9,
                        height: size.width * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder:  (context) => SignupScreen())
                            );
                          },
                          child: Text("Sing up"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }

  void showPassword(){
    setState(() => obscureText = false);
    Future.delayed(Duration(seconds: 1), () =>
        setState(() => obscureText = true));
  }

  void login(connectionProvider) async{
    print("\n-- Login");
    String username = usernameController.text;
    String password = passwordController.text;

    if(username == null || username.isEmpty){
      setState(() {
        print("- Username is Empty");
      });
    }else if(password == null || password.isEmpty){
      setState(() {
        print("- Password is Empty");
      });
    }
    else if(connectionProvider.connection == false){
      setState((){
        print("- No Connection");
      });
    }else{
      print("Username & Password Validated.");
      var reqBody = Map<String, dynamic>();
      reqBody['username'] = username;
      reqBody['password'] = password;
      String jsonBody = jsonEncode(reqBody);

      try{
        Response response = await post(LOGIN_URL, body:jsonBody, headers: NORMAL_HEADER);
        var decodedResponse = jsonDecode(response.body);
        print("Login Status: ${response.statusCode}");
//        print("Login Response: $decodedResponse");
        List loginError = decodedResponse["non_field_errors"];

        if(response.statusCode == 200){
          print("- Loged In Successfully");
          String token = decodedResponse['token'];
          await DatabaseHelper().insertToken(token);
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );

        }else if(loginError != null){
          if(loginError[0] == "Unable to log in with provided credentials."){
            print("- Login Error: ${loginError[0]}");

          }else{
            print("- Login Error: ${loginError[0]}");
          }
        }

      }catch(e){
        print("- Server Error $e");
      }
    }

//    Navigator.pushReplacement(
//        context,
//        MaterialPageRoute(builder:  (context) => HomeScreen())
//    );
  }
}
