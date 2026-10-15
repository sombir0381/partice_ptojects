import 'package:flutter/material.dart';

class Animated_Opacity extends StatefulWidget {
  const Animated_Opacity({super.key});

  @override
  State<Animated_Opacity> createState() => _Animated_OpacityState();
}

class _Animated_OpacityState extends State<Animated_Opacity> {

  bool isVisible = true;
  bool isImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),

      body: Column(
        children: [
          AnimatedOpacity(
              opacity: isVisible?1.0:0.5,
              duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,

            child: AnimatedAlign(
                alignment: isVisible ?Alignment.center :Alignment.topLeft,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                height: 100,
                width: 200,

                decoration:BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(40),
                ),

              ),
            ),
          ),

          ElevatedButton(onPressed: (){
            setState(() {
              isVisible=!isVisible;
            });
          },
              child: Text("Opacity")
          ),
          
          AnimatedOpacity(
              opacity: isImage?1.0:0.5, 
              duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: Image.asset('assets/images/animation.jpg'),
          ),
          
          ElevatedButton(onPressed: (){
            setState(() {
              isImage=!isImage;
            });
          }, 
              child: Text("image"))
          
          
        ],
      ),
    );
  }
}
