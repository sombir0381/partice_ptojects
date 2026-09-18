import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {

  //final String text;
  final String hinttext;
  const customtextfield({super.key,
   // required this.text
    required this.hinttext,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20)
       ),
        hintText: hinttext,
      ),
    );
  }
}
