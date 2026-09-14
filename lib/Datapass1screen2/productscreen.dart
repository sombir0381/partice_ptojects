import 'package:flutter/material.dart';
import 'detailsscreen.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {

  final List<String> students = [
    "rohan",
    "mohan",
    "sohan",
    "sahil"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
      ),
      body: ElevatedButton(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detailsscreen(
                students: students,
              ),
            ),
          );
        },
        child: const Text(" Students Data"),
      ),
    );
  }
}