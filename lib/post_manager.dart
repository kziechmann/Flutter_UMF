import 'package:flutter/material.dart';
import './posts.dart';

class PostManager extends StatefulWidget {
  final Map<String,String> startingPost;

  PostManager({this.startingPost}){

  }
  

  @override
  State<StatefulWidget> createState() {
    return _PostManagerState();
  }
}

class _PostManagerState extends State<PostManager> {
  final List<Map<String,String>> _posts = [];

  @override
  void initState(){
    if (widget.startingPost != null) {
      _posts.add(widget.startingPost);
    }

    super.initState();
  }

   void _addPost(Map<String, String> post) {
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
                _posts.add({'title': 'MountainPost', 'image': 'assets/mountains.jpg'});
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
