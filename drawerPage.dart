import 'package:flutter/material.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({super.key});

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 104, 99, 99),
                        ),
                      ),
                    Expanded(child: ListTile(
                      title: Text("Aya Hossam Eldien"),
                      subtitle: Text("Aya@icloud.com",
                      style: TextStyle(color: Colors.grey),),
                    ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  ListTile(
                    leading:Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: (){},
                  ),
                  ListTile(
                    leading:Icon(Icons.home),
                    title: Text("Home"),
                    onTap: (){},
                  ),
                  ListTile(
                    leading:Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ),
        ),

    );
  }
}