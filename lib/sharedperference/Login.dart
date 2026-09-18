import 'package:flutter/material.dart';
import 'package:partice_ptojects/sharedperference/Profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 8,bottom: 0 ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
        
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),

                  Text(
                    "Enter your Creditional so login",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 30,),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e3f2),
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      )
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e3f2),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child:
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Profile()
                      )
                      );

                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffa725b8),
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Login")),
                  ),
                  SizedBox(height: 50,),
                  
                  TextButton(onPressed: (){},
                      child: Text("Forgot Password?")
                  ),

                  SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( "Already have an account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      TextButton(onPressed: (){},
                          child: Text("Login")
                      )

                    ],
                  )




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
