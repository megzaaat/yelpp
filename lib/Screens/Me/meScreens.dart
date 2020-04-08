import 'package:flutter/material.dart';

class MeScreens extends StatefulWidget {
  @override
  _MeScreensState createState() => _MeScreensState();
}

class _MeScreensState extends State<MeScreens> {
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
                    'Me ',
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