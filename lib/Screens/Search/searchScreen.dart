import 'package:flutter/material.dart';
import 'package:yelpp/Screens/Search/searchWidgets/searchItems.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: <Widget>[
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
        SizedBox(
          height:200,
          width:300
        ),
      ],
    );
  }
}