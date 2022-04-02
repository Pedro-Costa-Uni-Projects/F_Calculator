import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width, height;
  final Function onPressed;
  final String text;
  final Color color;

  Button({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    this.color = Colors.black54,
    required this.onPressed,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: this.color),
        onPressed: () => onPressed(text),
        child: Text(
          this.text,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}