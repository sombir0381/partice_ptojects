import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class messageHide extends ChangeNotifier{

  bool isHidden = false;

  void hide (){

    isHidden =!isHidden;
    notifyListeners();

  }
}