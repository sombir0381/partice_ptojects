import 'package:flutter/material.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title:  Center(child: Text("Sign up")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: Text("Create your account")),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(fillColor: Colors.orange,
                prefixIcon: Icon(Icons.person),
               hintText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            SizedBox(height: 25,),
            
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
                    
              ),
              
            ),SizedBox(height: 25,),
            
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ) ,SizedBox(height:25 ,),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),SizedBox(height: 25,),
            
            ElevatedButton(onPressed: (){},
                child: Text("Sign up")
            ),

            SizedBox(height: 20,),

            Text("OR")
            
            ,SizedBox(height: 20,),
            
            ElevatedButton(onPressed: (){},
                child: Text("Sign in with Google")
            ),
            SizedBox(height: 20,),
            
            
            Row(
              children: [

                Text("Alerady have an account?"),
                TextButton(onPressed: (){},
                    child: Text("Login")
                )
              ],

            )

          ],
        ),
      ),

    );
  }
}
