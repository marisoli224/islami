import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeCurrentLocal (String newLocal){
    currentLocal = newLocal;
    notifyListeners();
  }

  changeCurrentMode (ThemeMode newMode){
    currentTheme = newMode;
    notifyListeners();
  }
}
