import 'package:flutter/material.dart';
import 'package:partice_ptojects/ProviderScreens/LightMode_Provider.dart';
import 'package:partice_ptojects/Providers/ConditionalRendering.dart';
import 'package:partice_ptojects/apidatapassing/apiget.dart';
import 'package:partice_ptojects/apidatapassing/apiget2.dart';
import 'package:provider/provider.dart';
import 'sharedperference/createaccount.dart';
import 'sharedperference/Login.dart';



import 'package:partice_ptojects/apidatapassing/userscreen.dart';
import 'Datapass1screen2/productscreen.dart';
import 'statefulpartice.dart';
import 'apidatapassing/apiget.dart';
import 'package:partice_ptojects/customwidget/maincustom.dart';
import 'package:partice_ptojects/formvalidation/formregister.dart';
import 'package:partice_ptojects/devicepermission/camerafeatures.dart';
import 'package:partice_ptojects/devicepermission/locationfeatures.dart';
import 'package:partice_ptojects/Providers/colourChange.dart';
import 'package:partice_ptojects/ProviderScreens/colourChange_Provider.dart';
import 'package:partice_ptojects/Providers/LightMode.dart';
import 'package:partice_ptojects/ProviderScreens/LightMode_Provider.dart';
import 'package:partice_ptojects/ProviderScreens/ConditionalRendering_Provider.dart';
import 'package:partice_ptojects/Providers/ConditionalRendering.dart';
import 'package:partice_ptojects/Animations/Animated_Container.dart';
import 'package:partice_ptojects/Animations/Animated_Opacity.dart';






// void main() {
//   runApp(
//       ChangeNotifierProvider(
//         create:(context)=>
//             messageHide(),
//         child:const MYApp(),
//       )
//   );
// }

void main (){
  runApp(MYApp());
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
      home: Animated_Opacity(),
    );
  }
}

