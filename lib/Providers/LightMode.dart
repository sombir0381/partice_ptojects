import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Lightmode extends ChangeNotifier{
  bool isDarkMode = false;

  void Theme(){
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

}