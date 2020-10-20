
import 'package:flutter/material.dart';

import 'package:unichat/models/states_model.dart';
import 'package:unichat/widgets/profile_edit.dart';

class ProfileStatesProvider extends ChangeNotifier {

  ProfileStatesProvider(){}
  /// OnEdit, OnSecurity, OnSetting, OnAboutUs, OnChart
  ProfileMainState _profileMainState = ProfileMainState(false, false, false, false, false);
  /// Page1, Page2, Page3, Page4, Page5
  ProfileEditState _profileEditState = ProfileEditState(true, false, false, false, false, false);
  Color _lastBackgroundColor = Color(0xA3D1FF);
  Color _lastFontColor = Colors.black;

  ProfileMainState get profileState => _profileMainState;
  ProfileEditState get profileEditState => _profileEditState;
  Color get lastBackgroundColor => _lastBackgroundColor;
  Color get lastFontColor => _lastFontColor;

  set profileState(ProfileMainState value){
    _profileMainState = value;
    notifyListeners();
  }
  set profileEditState(ProfileEditState value){
    _profileEditState = value;
    notifyListeners();
  }
  set lastBackgroundColor(Color value){
    _lastBackgroundColor = value;
    notifyListeners();
  }
  set lastFontColor(Color value){
    _lastFontColor = value;
    notifyListeners();
  }

  void setEdit(bool value){
    _profileMainState.onEdit = value;
    notifyListeners();
  }
  void setSecurity(bool value){
    _profileMainState.onSecurity = value;
    notifyListeners();
  }
  void setSetting(bool value){
    _profileMainState.onSetting = value;
    notifyListeners();
  }
  void setAboutUs(bool value){
    _profileMainState.onAboutUs = value;
    notifyListeners();
  }
  void setChart(bool value){
    _profileMainState.onChart = value;
    notifyListeners();
  }

  void setPage1(bool value){
    _profileEditState.page1 = value;
    notifyListeners();
  }
  void setPage2(bool value){
    _profileEditState.page2 = value;
    notifyListeners();
  }
  void setPage3(bool value){
    _profileEditState.page3 = value;
    notifyListeners();
  }
  void setPage4(bool value){
    _profileEditState.page4 = value;
    notifyListeners();
  }
  void setPage5(bool value){
    _profileEditState.page5 = value;
    notifyListeners();
  }
  void setPage6(bool value){
    _profileEditState.page6 = value;
    notifyListeners();
  }

}
