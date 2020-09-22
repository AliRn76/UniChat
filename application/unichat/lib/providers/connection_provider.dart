import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:connectivity/connectivity.dart';



class ConnectionProvider extends ChangeNotifier{

  ConnectionProvider(){
    initConnectivity();
    _invokeNetworkStatusListen();
  }

  StreamSubscription<ConnectivityResult> _subscription;
  bool _connection;

  StreamSubscription<ConnectivityResult> get subscription => _subscription;
  bool get connection => _connection;


  Future<void> initConnectivity() async {
    ConnectivityResult result;
    try {
      result = await Connectivity().checkConnectivity();
    } on PlatformException catch (e) {
      print("Connectivity Error: ${e.toString()}");
    }
    print("Connectivity Result: ${result.toString()}");
    if(result.toString() == "ConnectivityResult.none")
      _connection = false;
    else
      _connection = true;
    notifyListeners();
  }


  void _invokeNetworkStatusListen() async{
    _subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      print("Connectivity RESULT: $result");
      if(result.toString() == "ConnectivityResult.none")
        _connection = false;
      else
        _connection = true;
      notifyListeners();
    });
  }


  void disposeStreams(){
    _subscription.cancel();
  }
}



