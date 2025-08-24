import 'package:flutter/material.dart';
// import 'package:flutter_application_1/drawerPage.dart';
import 'package:flutter_application_1/pageOne.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TestPage> {

  int currentIndex =0 ;
  List <Widget> pages = [
    PageOne(),
    Center(
      child: Text("Page 2", style: TextStyle(fontSize: 40)),
    ),
    Center(
      child: Text("Page 3", style: TextStyle(fontSize: 40)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //APP BAR
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 172, 121, 138),
          title: Text("Home Page",
            style: TextStyle(color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold),),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white,),
          
          //LOGOUT
          actions:[ IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context){
               return AlertDialog(
                backgroundColor: Colors.white,
                title: Text("Are you sure?", style: TextStyle(fontSize: 20)),
                content: Text("Do you want to logout?", style: TextStyle(fontSize: 20)),
                actions: [
                  TextButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text("Logedout!"))));
                      Navigator.pop(context);
                  }, child: Text("Yes", style: TextStyle(fontSize: 20))),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("No", style: TextStyle(fontSize: 20))),
                ],
               );
            });
          }, icon: Icon(Icons.logout)),]
        ),

        //DRAWER
        // drawer: Drawerpage(),
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

        //BOTTOM NAVAGATION BAR
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:  const Color.fromARGB(255, 172, 121, 138),
          selectedItemColor: Colors.black,
          selectedFontSize: 18,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.white,
          unselectedFontSize: 15,
          currentIndex: currentIndex,
          onTap: (val){
            setState(() {
              currentIndex = val;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        
        body: pages.elementAt(currentIndex),

    );
  }
}