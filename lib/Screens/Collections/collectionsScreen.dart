import 'package:flutter/material.dart';

class CollectionsScreens extends StatefulWidget {
  @override
  _CollectionsScreensState createState() => _CollectionsScreensState();
}

class _CollectionsScreensState extends State<CollectionsScreens> {
  @override
  Widget build(BuildContext context) {
    return ListView(
              padding: EdgeInsets.only(top: 75, left: 30, right: 30),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(80),
                ),
                Center(
                  child: Text(
                    'Collections ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Color(0xFF4E7A9F)),textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
              ],
            );
  }
}