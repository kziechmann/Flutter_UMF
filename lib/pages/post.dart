import 'package:flutter/material.dart';


class PostPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Post Detail'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/mountains.jpg'),
            Text('Image Description'),
            RaisedButton(child: Text('Back to Feed'), onPressed: () => Navigator.pop(context),)
          ], ),
      );
    }
}