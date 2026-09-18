import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const custombutton({super.key,
    required this.text,
    required this.onpressed,
  
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onpressed, child: Text(text));
  }
}
