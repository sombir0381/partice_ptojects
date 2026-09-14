import 'package:flutter/material.dart';

class drawernavigation extends StatefulWidget {
  const drawernavigation({super.key});

  @override
  State<drawernavigation> createState() => _drawernavigationState();
}

List<Map<String, String>> Drawerrs = [
  {
    "category": "ADVENTURE",
    "name" :"Rahul",
    "age": "20",
    "state": "Delhi"
   
  },
  {
    "category": "FOOD",
    "name" :  "Isha",
    "age": "25",
    "state": "Delhi"
    
  },
];

class _drawernavigationState extends State<drawernavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),

      ),drawer: Drawer(
      child: ListView.builder(
        itemCount: Drawerrs.length,
          itemBuilder: (context,index)
          {
            return Card(

              child: Column(
                children: [
                  ListTile(
                   leading: Icon(Icons.category),
                    title:
                    Text(
                      Drawerrs[index]["category"]!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff374151),
                      ),
                    ),

                 ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title:
                    Text(
                      Drawerrs[index]["name"]!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff374151),
                      ),
                    ),

                  ),
                  ListTile(
                    leading: Icon(Icons.location_pin),
                    title:
                      Text(
                        Drawerrs[index]["state"]!,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff374151),
                        ),
                      )
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      Drawerrs[index]["age"]!,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff374151),
                      ),
                    ),
                  )

                ],
              ),
            );
          }
      ),
       
    ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("HomeScreen")
          ],
        ),
      ),
    );
  }
}
