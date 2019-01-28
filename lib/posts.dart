import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<String> posts;

  

  Posts(this.posts){

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: posts
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/mountains.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
