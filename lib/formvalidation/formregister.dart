import 'package:flutter/material.dart';

class formregister extends StatefulWidget {
  const formregister({super.key});

  @override
  State<formregister> createState() => _formregisterState();
}

class _formregisterState extends State<formregister> {
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormValidation registerScreen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 8),
          child: Column(
            children: [


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
              Form(
                  key: formKey,
                  child:
                Column(
                  children: [
                    TextFormField(
                     validator: ((value)
                  {
                  if(
                  value==null || value.isEmpty){
                 return "this is required";

                 }
                  return null;

                  }
                ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:  Color(0xfff0e3f2),

                          prefixIcon:  Icon(
                            Icons.person,
                            size: 18,
                          ),

                          hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                      SizedBox(height: 20),
                    TextFormField(
                      validator: ((value)
                      {
                        if(
                        value==null || value.isEmpty){
                          return "this is required";

                        }
                        if(
                        !value.contains("@")
                        ){
                          return "enter a valid email";
                        }
                        return null;

                      }
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:  Color(0xfff0e3f2),

                          prefixIcon:  Icon(
                            Icons.email,
                            size: 18,
                          ),

                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                      validator: ((value)
                      {
                        if(
                        value==null || value.isEmpty){
                          return "this is required";

                        }
                        if (
                        value.length<10){
                          return "Please add 10 letters";
                        }

                        return null;

                      }
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:  Color(0xfff0e3f2),

                          prefixIcon:  Icon(
                            Icons.phone,
                            size: 18,
                          ),


                          hintText: "phoneNumber",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),

                    SizedBox(height: 20),
                    TextFormField(
                      validator: ((value)
                      {
                        if(
                        value==null || value.isEmpty){
                          return "this is required";

                        }
                        return null;

                      }
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:  Color(0xfff0e3f2),

                          prefixIcon:  Icon(
                            Icons.password,
                            size: 18,
                          ),

                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                      validator: ((value)
                      {
                        if(
                        value==null || value.isEmpty){
                          return "this is required";

                        }
                        return null;

                      }
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:  Color(0xfff0e3f2),

                          prefixIcon:  Icon(
                            Icons.password,
                            size: 18,
                          ),

                          hintText: "confirmPassword",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),




                  ],
                )
              ),SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(onPressed: (){
                  if (
                  formKey.currentState!.validate()
                  ){
                    print("Form is valid");
                  }
                  else{
                    print("Form is invalid");
                  }
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffa725b8),
                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                    child: Text("Register")),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
