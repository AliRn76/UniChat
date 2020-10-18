import 'package:flutter/material.dart';
import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/screens/login_screen.dart';
import 'package:unichat/screens/signup_screen.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color kPrimaryColor = Color(0xFF66c2ff);
  String password;
  String username;
//  bool isSignup = false;
//  bool isLogin = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController usernameController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Artunis",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Messanger",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(height: size.width * 0.05),
                  Text("Send Message With Love & Peace of Mind"),
                  SizedBox(height: size.width * 0.15),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => LoginScreen())
                          );
                        },
                        child: Text("Login"),
                      ),
                    ),
                  ),
                  SizedBox(height: size.width * 0.02),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => SignupScreen())
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
      ),
    );
  }


  void showPassword(){
    setState(() => obscureText = false);
    Future.delayed(Duration(seconds: 1), () =>
      setState(() => obscureText = true));
  }

}
