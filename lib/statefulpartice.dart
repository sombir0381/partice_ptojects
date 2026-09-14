import 'package:flutter/material.dart';

class stateful extends StatefulWidget {
  const stateful({super.key});

  @override
  State<stateful> createState() => _statefulState();
}

class _statefulState extends State<stateful> {
  int counter = 0;
  bool isHide = true;
  bool isColour = true;
  bool isLiked = false;
  int likeCounter = 0;

  String message = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      isColour ? Colors.white : Colors.lightBlue.shade300,

      appBar: AppBar(
        title: Text("Stateful Practice"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Counter App
            Text("1. Counter app"),
            SizedBox(height: 10),

            Text(
              "$counter",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("+"),
                ),

                SizedBox(width: 30),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text("-"),
                ),
              ],
            ),

            SizedBox(height: 40),

            // 2. Show / Hide Password
            Text("2. Show / Hide Text"),
            SizedBox(height: 20),

            TextField(
              obscureText: isHide,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Password",

                suffixIcon: IconButton(
                  icon: Icon(
                    isHide
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      isHide = !isHide;
                    });
                  },
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(height: 15),

            // 3. Change Background
            Text("3. Change Background"),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isColour = !isColour;
                });
              },
              child: Text("Colour Change"),
            ),

            SizedBox(height: 15),

            // 4. Like Button
            Text("4. Like Button"),
            SizedBox(height: 10),

            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;

                      if (isLiked) {
                        likeCounter++;
                      } else {
                        likeCounter--;
                      }
                    });
                  },
                  icon: Icon(
                    isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                ),

                Text("$likeCounter"),
              ],
            ),

            SizedBox(height: 20),

            // 5. Login Form
            Text("5. Login Form"),
            SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    message = "Please fill all fields";
                  } else {
                    message = "Login Successful";
                  }
                });
              },
              child: Text("Login"),
            ),

            SizedBox(height: 10),

            Text(
              message,
              style: TextStyle(
                fontSize: 18,

              ),
            ),
            SizedBox(height: 20,),

            Text("6. Student Profile")








            ,SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}


