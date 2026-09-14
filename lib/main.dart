import 'package:flutter/material.dart';
import 'package:partice_ptojects/apiget.dart';
import 'package:partice_ptojects/apiget2.dart';
import 'createaccount.dart';



import 'package:partice_ptojects/userscreen.dart';
import 'Datapass1screen2/productscreen.dart';
import 'statefulpartice.dart';
import 'apiget.dart';

void main() {
  runApp(const MYApp());
}

class MYApp extends StatefulWidget {
  const MYApp({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createaccount(),
    );
  }
}

