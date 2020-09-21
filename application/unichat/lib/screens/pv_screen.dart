import 'package:flutter/material.dart';


class PvScreen extends StatefulWidget {
  @override
  _PvScreenState createState() => _PvScreenState();
}

class _PvScreenState extends State<PvScreen> {
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
                Color(0xffe2aff3),
                Color(0xfff9f9f9),
              ]
          )
      ),
      child: SafeArea(
        child: Text(
          "PV",
        ),
      ),
    );
  }
}
