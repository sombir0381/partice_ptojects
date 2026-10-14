import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({super.key});

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  bool isAnimated=false ;
  bool isSize=false;
  bool isPadding=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),

      body: Column(
        children: [
          Center(
            child: AnimatedContainer
              (duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: 200,
             width: 300,
              decoration: BoxDecoration(
                color: isAnimated?Colors.teal:Colors.greenAccent,
                borderRadius: BorderRadius.circular(isAnimated?50:0)

              ),child: Center(
                child: Text("Hello Flutter",
                 style: TextStyle(
                   fontSize:isAnimated?20:10,
                   color: Colors.white
                 ),
                ),
              ),
            )

          ),
          ElevatedButton(onPressed: (){
            setState(() {
              isAnimated=!isAnimated;
            });
          },
              child: Text("Colour Change")),
          
          AnimatedPadding(padding:EdgeInsets.all(isPadding ? 40 : 10) ,
              duration: Duration(seconds: 1),
            curve: Curves.easeInOut,



          ),
          ElevatedButton(onPressed: (){
            setState(() {
              isPadding=!isPadding;
            });
          },
              child: Text("Padding")),



          AnimatedContainer(
              duration: Duration(seconds: 1),
            curve: Curves.easeInOut,

            height: isSize? 300:200,
            width: isSize?200:100,
              decoration: BoxDecoration(
                  color: isSize?Colors.teal:Colors.greenAccent,
                  borderRadius: BorderRadius.circular(isSize?50:0),


              ),
            child: Center(
              child: Text("Welcome Flutter",
                style: TextStyle(
                    fontSize:isSize?20:10,
                    color: Colors.white
                ),
              ),
            ),

          ),
          ElevatedButton(onPressed: (){
            setState(() {
              isSize=!isSize;
            });
          },
              child: Text("Size"))
        ],
      ),
    );
  }
}
