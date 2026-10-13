import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:partice_ptojects/Providers/LightMode.dart';

class LightmodeProvider extends StatefulWidget {
  const LightmodeProvider({super.key});

  @override
  State<LightmodeProvider> createState() => _LightmodeProviderState();
}

class _LightmodeProviderState extends State<LightmodeProvider> {
  @override
  Widget build(BuildContext context) {

    return Consumer<Lightmode>(
        builder:(context, provider, child){
          return Scaffold(
            backgroundColor:  provider.isDarkMode? Colors.black12 : Colors.green,

            appBar: AppBar(
              title: Text("LightMode"),
            ),

            body:  Column(
              children: [
                Text(
                  provider.isDarkMode ?   'Current Theme: Dark Mode'
                    : 'Current Theme: Light Mode',
                ),
                ElevatedButton(onPressed: (){
                  provider.Theme();
                },
                    child: Text("DarkMode"))
              ],
            ),

          );
        },
    );
  }
}
