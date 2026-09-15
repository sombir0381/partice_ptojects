import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  String name = "";
  String username = "";
  String mobile = "";
  String email = "";


  Future<void> getData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("name") ?? "";
      username = prefs.getString("username") ?? "";
      mobile = prefs.getString("mobile") ?? "";
      email = prefs.getString("email") ?? "";
    });
  }


  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [


             CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 55,
              ),
            ),

             SizedBox(height: 15),


            Text(
              name,
              style:  TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

             SizedBox(height: 5),


            Text(
              "@$username",
              style:  TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

             SizedBox(height: 25),


            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit),
                label: Text("Edit Profile"),
              ),
            ),

             SizedBox(height: 20),


            ListTile(
              leading:  Icon(Icons.email_outlined),
              title:  Text("Email"),
              subtitle: Text(email),
            ),


            ListTile(
              leading:  Icon(Icons.alternate_email),
              title:  Text("Username"),
              subtitle: Text("@$username"),
            ),


            ListTile(
              leading:  Icon(Icons.phone_outlined),
              title:  Text("Mobile"),
              subtitle: Text(mobile),
            ),
          ],
        ),
      ),
    );
  }
}