import 'package:flutter/material.dart';

import './posts.dart';

class PostManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PostManagerState();
  }
}

class _PostManagerState extends State<PostManager> {
  List<String> _posts = ['OutdoorPost'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _posts.add('MountainPost');
          });
        },
        child: Text('Add Post'),
      ),
    ),
    Posts(_posts)
    ],);
  }
}
