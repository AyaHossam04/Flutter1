import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
List<String> title = ["aaaaa", "bbbbb", "ccccc", "ddddd"];
List<Color> color = [Colors.red, Colors.blue, Colors.green, Colors.yellow];
List<String> cities = ["Cairo", "Alexandria", "Ismailia","Porsaid"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Search Property",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.deepPurple,
                  suffixIcon: Icon(Icons.sort),
                  suffixIconColor: Colors.deepPurple,
                ),
              ),
            ),

          SizedBox(height: 25),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Image.asset("images/img.jpg", fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 25, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("See all", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20)),
            ],),
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemCount: color.length,
              separatorBuilder: (context, i) => SizedBox(width: 15),
              itemBuilder: (context, i){
                return Container(
                  width: 224,
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color[i],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title[i], style: TextStyle(color: Colors.white, fontSize: 20),),
                        Row(
                         children: [
                          Icon(Icons.pin_drop_rounded),
                          Text(cities[i], style: TextStyle(color: Colors.grey, fontSize: 15))
                         ],
                        )
                      ],
                    ),
                  ),
                );
              } ),
          )
          ],
        ),
      ),
    );
  }
}