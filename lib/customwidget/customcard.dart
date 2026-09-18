import 'package:flutter/material.dart';
class customcard extends StatelessWidget {

  final String title;
  final String description;
  final IconData icon;
  const customcard({super.key,
    required this.title,
    required this.description,
    required this.icon,


  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text("title"),
        subtitle: Text("subtitle"),
      ),
    );
  }
}
