import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final content;

  Display({this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Align (
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.all(4.0),
              height: MediaQuery.of(context).size.height / 5,
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}