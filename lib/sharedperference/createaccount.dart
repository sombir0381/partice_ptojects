import 'package:flutter/material.dart';
import 'package:partice_ptojects/sharedperference/Login.dart';
import 'package:partice_ptojects/sharedperference/Profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", nameController.text);
    await prefs.setString("username", usernameController.text);
    await prefs.setString("mobile", mobileController.text);
    await prefs.setString("email", emailController.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Profile(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(





      body: SafeArea(
        child: Center(

          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 8,bottom: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  SizedBox(height: 20,),


                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                   SizedBox(height: 10),


                  Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                   SizedBox(height: 25),


                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.person,
                        size: 18,
                      ),

                      hintText: "Name",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),


                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.alternate_email,
                        size: 18,
                      ),

                      hintText: "Username",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    controller: mobileController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.phone,
                        size: 18,
                      ),

                      hintText: "Mobile No.",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),


                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.email,
                        size: 18,
                      ),

                      hintText: "Email",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                   SizedBox(height: 20),


                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.password,
                        size: 18,
                      ),

                      hintText: "Password",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Color(0xfff0e3f2),

                      prefixIcon:  Icon(
                        Icons.password,
                        size: 18,
                      ),

                      hintText: "Confirm Password",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                   SizedBox(height: 20),


                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: saveData,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffa725b8),
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      child:  Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                   SizedBox(height: 20),

                  Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 15),


                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: OutlinedButton(
                      onPressed: () {},

                      style: OutlinedButton.styleFrom(
                        foregroundColor:  Color(0xffa725b8),

                        side:  BorderSide(
                          color: Color(0xffa725b8),
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      child:  Text(
                        "Sign in with Google",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),

                   SizedBox(height: 15),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 9,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>Login()
                              ),
                          );

                        },

                        child:  Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 9,
                            color: Color(0xffa725b8),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ],
              ),
            ),

          ),

        ),
      ),
    );
  }
}