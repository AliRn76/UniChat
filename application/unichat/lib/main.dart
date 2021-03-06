import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:unichat/providers/connection_provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/screens/home_screen.dart';
import 'package:unichat/screens/first_screen.dart';
import 'package:unichat/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ConnectionProvider>.value(value: ConnectionProvider()),
        ChangeNotifierProvider<ProfileStatesProvider>.value(value: ProfileStatesProvider()),
        ChangeNotifierProvider<ProfileDataProvider>.value(value: ProfileDataProvider()),
      ],
      child: MaterialApp(
        title: 'Uni Chat',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
//        scaffoldBackgroundColor:
        ),
        home: LoadingScreen(),
      ),
    );
  }
}
