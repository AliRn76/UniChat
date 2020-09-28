import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:unichat/providers/connection_provider.dart';
import 'package:unichat/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ConnectionProvider>.value(value: ConnectionProvider()),
      ],
      child: MaterialApp(
        title: 'Uni Chat',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
//        scaffoldBackgroundColor:
        ),
        home: HomeScreen(),
      ),
    );
  }
}
