import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/connection_provider.dart';
import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/screens/login_screen.dart';
import 'package:unichat/sqlite/database_helper.dart';
import 'package:unichat/utils/requests_utils.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Color kPrimaryColor = Color(0xFF66c2ff);
//  String password;
//  String username;
  String buttonText = "LOGIN";
  Color buttonColor = Color(0xFF66c2ff);
  bool obscureText = true;

//  bool isSignup = false;
//  bool isLogin = false;
//  ButtonState buttonState = ButtonState.normal;

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
                  "Create Account",
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
                    SizedBox(height: size.width * 0.07),
                    Center(
                      child: Container(
                        width: size.width * 0.9,
                        height: size.width * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: FlatButton(
                          onPressed: () => signUp(connectionProvider),
                          child: Text("Sign up"),
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
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text("Login"),
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
    Future.delayed(Duration(seconds: 2), () =>
        setState(() => obscureText = true));
  }

  void signUp(connectionProvider) async{
    print("\n-- Sign Up");
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
//      reqBody['is_male']  = true;
      String jsonBody = jsonEncode(reqBody);

      try{
        Response response = await post(SIGNUP_URL, body:jsonBody, headers: NORMAL_HEADER);
        var decodedResponse = jsonDecode(response.body);
        print("Sing up Status: ${response.statusCode}");
//        print("Sing up Response: $decodedResponse");
        List userError = decodedResponse["username"];
        List passwordError = decodedResponse["password"];

        if(response.statusCode == 200){
          print("- Signed up Successfully");
          String token = decodedResponse['token'];
          await DatabaseHelper().insertToken(token);
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );

        }else if(userError != null){
          if(userError[0] == "my user with this username already exists."){
            print("- Sign up Error: User with this username already exists.");
          }

        }else if(passwordError != null){
          if(passwordError[0] == "This password is too common."){
            print("- Sign up Error: ${passwordError[0]}");

          }else if(passwordError[0] == "This password is entirely numeric."){
            print("- Sign up Error: ${passwordError[0]}");

          }else if(passwordError[0] == "This password is too short. It must contain at least 8 characters."){
            print("- Sign up Error: ${passwordError[0]}");

          }else if(passwordError[0] == "This password is too short. It must contain at least 8 characters."){
            print("- Sign up Error: ${passwordError[0]}");

          }else{
            print("- Sign up Error: ${passwordError[0]}");

          }
        }

      }catch(e){
        print("- Server Error $e");
      }

    }
  }
}


//TODO: line 135 bere be login