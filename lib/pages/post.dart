import 'dart:async';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  PostPage(this.title,this.description, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () {
      Navigator.pop(context);
    } ,child: Scaffold(
     appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Take a Photo',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/posts');
            },
          ),
        title: Text('Insta-photo', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'VeganStyle'),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Take a Photo',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/createPost');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            tooltip: 'View Profile',
            onPressed: (){
              Navigator.pushReplacementNamed(
                context, 
                '/postList');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(title, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0,),
                  child: Text(description, style: TextStyle(fontSize: 18.0, color: Colors.black54), textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
}

}
