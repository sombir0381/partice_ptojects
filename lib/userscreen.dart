import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class userscreen extends StatefulWidget {
  const userscreen({super.key});

  @override
  State<userscreen> createState() => _userscreenState();
}

class _userscreenState extends State<userscreen> {

  List users=[];


  Future<void> getUsers() async{
    final response =await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),

    );

    if(response.statusCode==200){
      setState(() {
        users=jsonDecode(response.body);
      });
    }

  }

  @override

  void initState(){
    super.initState();
    getUsers();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello api "),
      ),

      body:  Column(
        children: [


          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    //child: Text(users[index]["id"]),
                  ),
                  title: Text(users[index]["name"]),
                );
              } ,
            ),
          )

        ],
      ),
    );
  }
}
