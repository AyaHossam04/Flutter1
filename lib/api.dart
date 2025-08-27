import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class APIPage extends StatefulWidget {
  const APIPage({super.key});

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> {
  Future<List> getData()async{
    var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    headers:{"Accept":"application/json"}
    );
    List responseBody = jsonDecode(response.body);
    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("API", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(color: Colors.blueAccent,),);
          }
          if(snapshot.hasData){
            //
            return ListView.separated(
              itemBuilder: (context, i){
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  child: ListTile(
                    title: Text("${snapshot.data![i]['title']}"),
                    subtitle: Text("${snapshot.data![i]['body']}"),
                  ),
                ),
              );
            }, 
            separatorBuilder: (context,i) => SizedBox(height: 0), 
            itemCount: snapshot.data!.length);
          }
        return Text('ERROR No data');
        },
        )
    );
  }
}