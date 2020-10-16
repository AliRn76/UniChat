import 'package:flutter/material.dart';
import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/widgets/register_signup.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Color kPrimaryColor = Color(0xFF66c2ff);
  String password;
  String username;
  bool isSignup = false;
  bool isLogin = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController usernameController = TextEditingController();

    return isLogin ? Scaffold(
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
                    onChanged: (value) => setState(() => username = value),
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
//                    controller: usernameController,
                    onChanged: (value) => setState(() => password = value),
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
                        onPressed: (){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder:  (context) => HomeScreen())
                          );
                        },
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
                          setState(() {
                            isSignup = true;
                            isLogin = false;
                          });
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
    )
      : isSignup ?  RegisterSignup()
        : Scaffold(
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
                          setState(() {
                            isSignup = false;
                            isLogin = true;
                          });
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
                          setState(() {
                            isSignup = true;
                            isLogin = false;
                          });
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
