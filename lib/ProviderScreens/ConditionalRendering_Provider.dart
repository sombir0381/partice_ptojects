
import 'package:flutter/material.dart';
import 'package:partice_ptojects/Providers/ConditionalRendering.dart';
import 'package:provider/provider.dart';

class ConditionalrenderingProvider extends StatefulWidget {
  const ConditionalrenderingProvider({super.key});

  @override
  State<ConditionalrenderingProvider> createState() => _ConditionalrenderingProviderState();
}

class _ConditionalrenderingProviderState extends State<ConditionalrenderingProvider> {
  @override
  Widget build(BuildContext context) {
    return Consumer<messageHide>(
        builder:(context, provider, child){
          return Scaffold(
          appBar: AppBar(
            title: Text("MessageHide"),
          ),

            body: Column(
              children: [
                Text(
                  provider.isHidden? 'Current Message: '
                      : 'Current Message: Welcome Flutter',
                ),

                ElevatedButton(onPressed: (){
                  provider.hide();
                },
                    child: Text("Message Hide"))
              ],
            ),
          );
        }

    );
  }
}
