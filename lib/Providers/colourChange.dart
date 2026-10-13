import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class colourChangeProvider extends ChangeNotifier {
  String SelectedColour = "Red";

  Color selectedColor = Colors.red;

  void changeRed() {
    SelectedColour = "Red";
    selectedColor = Colors.red;
    notifyListeners();
  }

  void changeGreen() {
    SelectedColour = "Green";
    selectedColor = Colors.green;
    notifyListeners();
  }

  void changeBlue() {
    SelectedColour = "Blue";
    selectedColor = Colors.blue;
    notifyListeners();
  }

  void changeYellow() {
    SelectedColour = "Yellow";
    selectedColor = Colors.yellow;
    notifyListeners();
  }
}
