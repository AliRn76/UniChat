
import 'package:flutter/material.dart';

import 'package:unichat/models/profile_state_model.dart';

class ProfileStateProvider extends ChangeNotifier {

  ProfileStateProvider(){}

  ProfileState _profileState = ProfileState(false, false, false, false, false);

  ProfileState get profileState => _profileState;

  set profileState(ProfileState value){
    _profileState = value;
    notifyListeners();
  }

  void setEdit(bool value){
    _profileState.onEdit = value;
    notifyListeners();
  }
  void setSecurity(bool value){
    _profileState.onSecurity = value;
    notifyListeners();
  }
  void setSetting(bool value){
    _profileState.onSetting = value;
    notifyListeners();
  }
  void setAboutUs(bool value){
    _profileState.onAboutUs = value;
    notifyListeners();
  }
  void setContact(bool value){
    _profileState.onContact = value;
    notifyListeners();
  }

}
