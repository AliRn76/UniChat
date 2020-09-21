import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.2,
                0.7,
              ],
              colors: [
                Color(0xfff3e2af),
                Color(0xfff9f9f9),
              ]
          )
      ),
      child: SafeArea(
        child: Text(
          "Group Chat",
        ),
      ),
    );
  }
}
