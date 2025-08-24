import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
TextEditingController emailPhoneNumber = TextEditingController();
TextEditingController password = TextEditingController();

GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              SizedBox(height: 50),

              Text("Let's Get You Sign In!", 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold
                ),),

                SizedBox(height: 10),

                Text("Enter your information below",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey),
                ),

                SizedBox(height: 50),

                TextFormField(
                  validator: (value) {
                    if(value!.length < 3) {
                      return "You must write at least 3 letters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Email / Phone Number"),
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  controller: emailPhoneNumber,
                ),

                SizedBox(height: 12),

                TextFormField(
                  validator: (value) {
                    if(value!.length < 4) {
                      return "Password must at least 4 letters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Password"),
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  obscureText: true,
                  controller: password,
                ),

              SizedBox(height: 13),

              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?",
                style: TextStyle(fontWeight: FontWeight.bold),
                )
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: (){
                    if(formstate.currentState!.validate()){
                      print("Sign In Completed!");
                    }
                  },
                  color: const Color.fromARGB(255, 68, 163, 71),
                  child: Text("Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                )
              ),
              
              Padding(padding: const EdgeInsets.all(10),
                child: Text("Or Continue With",
                style: TextStyle(
                  color: Colors.grey
                )),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 192, 190, 190)) ,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.g_mobiledata, color: Colors.red, size:30),
                          Text("Google",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                          
                      ],)
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 192, 190, 190)) ,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, color: Colors.blue, size:20),
                          Text("Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                          
                      ],)
                    ),
                  ),
                ],
              ),
            ],
              ) ,
              ),

              Padding(padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    )),
                    TextButton(onPressed: () {
                      print("Sign Up");
                    }, child: Text("Sign Up",
                    style: TextStyle(color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,)
                    )),
                  ],
                )
              ),
            ],
          ),
        ),
    );
  }
}