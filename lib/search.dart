import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Search", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearch());
          }, icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(buttonType: ButtonType.google, buttonSize: ButtonSize.medium, onPressed: () {}),
            SizedBox(height: 20),
            SignInButton(buttonType: ButtonType.facebook, buttonSize: ButtonSize.medium, onPressed: () {}),
            SizedBox(height: 20),
            SignInButton(buttonType: ButtonType.apple, buttonSize: ButtonSize.medium, onPressed: () {}),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List dataList=['Ali','Ahmed','Abdallah','Badr','Yousef','Yasser'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){
        query = '';
      }, icon: Icon(Icons.close),),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text("Searched : $query", style: TextStyle(fontSize: 20),),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == ''){
      return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemCount: dataList.length,
        itemBuilder: (context, i){
          return InkWell(
            onTap: (){
              query = dataList[i];
              showResults(context);
            },
            child: Card(
              child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Text(dataList[i]),
              ),
            ),
          );
        }),
    );
    }else{
      final filterList = dataList.where((element) => element.contains(query)).toList();
      return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemCount: filterList.length,
        itemBuilder: (context, i){
          return InkWell(
            onTap: (){
              query = filterList[i];
              showResults(context);
            },
            child: Card(
              child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Text(filterList[i]),
              ),
            ),
          );
        }),
    );
    }
  }


}