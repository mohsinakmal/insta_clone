import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {

  static String id = 'search_screen';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Text('Search');
  }
}
