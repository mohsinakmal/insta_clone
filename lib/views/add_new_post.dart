import 'package:flutter/material.dart';
class PostScreen extends StatefulWidget {

  static String id = 'post_screen';
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Text('Add New Post');
  }
}
