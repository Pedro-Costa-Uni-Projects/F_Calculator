import 'package:flutter/material.dart';
import 'package:f_calculator/blocs/calculator.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final Calculator calculator;
  Keyboard({required this.calculator});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Button(
                  text: "C",
                  width: calculateButtonWidth(context),
                  height:  calculateButtonHeight(context),
                  color: Colors.grey,
                  onPressed: (symbol) => calculator.onClear(),
                ),
                Button(
                  text: "<",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.grey,
                  onPressed: (symbol) => calculator.onRemoveLast(),
                ),
                Button(
                  text: "%",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "/",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Button(
                  text: "7",
                  width: calculateButtonWidth(context),
                  height:  calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "8",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "9",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "*",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Button(
                  text: "4",
                  width: calculateButtonWidth(context),
                  height:  calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "5",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "6",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "-",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Button(
                  text: "1",
                  width: calculateButtonWidth(context),
                  height:  calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "2",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "3",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "+",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Button(
                  text: "0",
                  width: calculateButtonWidth(context, isDouble: true),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: ".",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
                ),
                Button(
                  text: "=",
                  width: calculateButtonWidth(context),
                  height: calculateButtonHeight(context),
                  color: Colors.orange,
                  onPressed: (symbol) => calculator.onEquals(),
                ),
              ],
            ),
          ],
        )
    );
  }

  double calculateButtonWidth(context, {isDouble = false}) {
    double width = MediaQuery.of(context).size.width / 4;
    return isDouble ? (width * 2) : width;
  }
  double calculateButtonHeight(context) {
    return MediaQuery.of(context).size.height / 8;
  }

}