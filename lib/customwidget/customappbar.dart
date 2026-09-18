import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  final String title;
  const customappbar({super.key,
    required this.title

  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
