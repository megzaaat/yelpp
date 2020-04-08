import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
              padding: EdgeInsets.only(top: 75, left: 30, right: 30),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(80),
                ),
                Center(
                  child: Text(
                    'More Information about us ',
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