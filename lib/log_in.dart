import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 51, 56),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [      
              SizedBox(height: 150),          
              Text("Log In", 
              style: TextStyle(
                fontSize: 35, 
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),),            
                SizedBox(height: 10),
                Text("Please sign in to your existing account",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey),
                ),]
              ),
              SizedBox(height: 60),
              
                Expanded(
                  child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),
                    ),
                  ),
                  
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 20),
                      TextFormField(
                      decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        hintStyle: TextStyle(color: Colors.grey),
                        label: Text("EMAIL"),
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        fillColor: const Color.fromARGB(255, 217, 217, 217),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        )

                      ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),                      
                        label: Text("PASSWORD"),
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        fillColor: const Color.fromARGB(255, 172, 170, 170),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        suffixIcon: Icon(Icons.visibility, color: Colors.grey,),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text("Remember Me", style: TextStyle(color: Colors.grey, fontSize: 17),),
                          ]),
                          Text("Forgot Password", style: TextStyle(color: Colors.orange, fontSize: 17),),
                          ],
                        ),
                      ),
                    MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: (){
                    print("Log In Completed!");
                    },
                    color: Colors.orange,
                    child: Text("Log In",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    )),
                    ),
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      )),
                      TextButton(onPressed: () {
                        print("Sign Up");
                      }, child: Text("Sign Up",
                      style: TextStyle(color: Colors.orange,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,)
                      )),
                    ],
                  )
                  ),
                  Text("Or", style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue, size: 60,),),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue, size: 60,),),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.apple, size: 60,),)
                        ],
                  )
                    ],
                  ),
                  ),
                ),
            ],
          ),
      ),
    );
  }
}