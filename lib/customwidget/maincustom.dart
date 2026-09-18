import 'package:flutter/material.dart';
import 'package:partice_ptojects/customwidget/customtextfield.dart';
import 'package:partice_ptojects/customwidget/custombutton.dart';
import 'package:partice_ptojects/customwidget/customappbar.dart';
import 'package:partice_ptojects/customwidget/customcard.dart';

class maincustom extends StatefulWidget {
  const maincustom({super.key});

  @override
  State<maincustom> createState() => _maincustomState();
}

class _maincustomState extends State<maincustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //appBar: customappbar(title: "Customwidgets"),
      body:Column(
        children: [
        customtextfield(hinttext: "email"),
          custombutton(text: "Login", onpressed: (){print("Login");}),
          customcard(title: "flutter", description: "learn flutter development", icon: Icons.notes)
        ],
      ),
    );
  }
}
