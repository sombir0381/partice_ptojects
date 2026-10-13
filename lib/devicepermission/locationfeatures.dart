import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class locationfeatures extends StatefulWidget {
  const locationfeatures({super.key});

  @override
  State<locationfeatures> createState() => _locationfeaturesState();
}

class _locationfeaturesState extends State<locationfeatures> {

  String Location = "Location not found";
  Future <void> geolocation() async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (! serviceEnabled){
      setState(() {
        Location = "Please Turn Location";
      });
      return ;
    }
    permission = await Geolocator.checkPermission();
     if( permission == LocationPermission.denied){
       permission = await Geolocator.requestPermission();
       if(permission == LocationPermission.denied){
         setState(() {
           Location = "Location permission denied";
         });
         return;

       }
       if (permission == LocationPermission.deniedForever){
         setState(() {
           Location = "Permanent denied";
         });
         return;
       }

       Position position = await Geolocator.getCurrentPosition();

       setState(() {
         Location = "${position.latitude}\n${position.longitude}";
       });
     }




  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Column(
        children: [
          Text(Location),
          ElevatedButton(onPressed: geolocation, child: Text("Location"))
        ],
      ),



    );
  }
}
