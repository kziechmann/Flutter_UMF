import 'package:flutter/material.dart';

import './posts.dart';

class PostManager extends StatefulWidget {
  final String startingPost;

  PostManager({this.startingPost = 'Mountain Post'}){

  }
  

  @override
  State<StatefulWidget> createState() {
    return _PostManagerState();
  }
}

class _PostManagerState extends State<PostManager> {
  List<String> _posts = [];

  @override
  void initState(){
    _posts.add(widget.startingPost);
    super.initState();
  }

   void _addPost(String post) {
    setState(() {
      _posts.add(post);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _posts.add('MountainPost');
              });
            },
            child: Text('Add Post'),
          ),
        ),
        Expanded(child: Posts(_posts))
      ],
    );
  }
}
