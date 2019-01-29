
import 'package:flutter/material.dart';

class PostControl extends StatelessWidget {
  final Function addPost;

  PostControl(this.addPost);

    @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addPost({'title': 'MountainPost', 'image': 'assets/mountains.jpg'});
            },
            child: Text('Add Post'),
          );
  }
}