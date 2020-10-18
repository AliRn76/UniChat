import 'package:flutter/material.dart';
import 'package:unichat/providers/token_provider.dart';
import 'package:unichat/screens/first_screen.dart';

import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/screens/login_screen.dart';



class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}



class _LoadingScreenState extends State<LoadingScreen> {

  void loading() async{
    print("\n-- Loading ");
    bool has_token = await TokenProvider().checkToken();

    if(has_token){
      print("- Go HomeScreen");
      Future.delayed(Duration(seconds: 2, milliseconds: 150), () {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      });

    }else{
      print("- Go FirstScreen");
      Future.delayed(Duration(seconds: 5, milliseconds: 150), () {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => FirstScreen()),
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    loading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading ..."),
      ),
    );
  }
}