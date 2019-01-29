import 'package:flutter/material.dart';


class AuthPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: Text('Insta-photo'),
      ),
        body: Center(
          child: RaisedButton(
            child:Text('Login'),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context, 
                '/');
            },
          ),
        ),
      );
    }
}