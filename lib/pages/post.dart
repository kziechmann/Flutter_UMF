import 'dart:async';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  PostPage(this.title,this.description, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () {
      Navigator.pop(context, false);
      return Future.value(false);
    } ,child: Scaffold(
      appBar: AppBar(
        title: Text('Insta-photo', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'VeganStyle'),),
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
