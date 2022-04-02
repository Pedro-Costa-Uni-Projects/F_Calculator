import 'package:flutter/material.dart';
import 'package:f_calculator/blocs/calculator.dart';
import 'display.dart';
import 'keyboard.dart';
import 'historicscreen.dart';

void main() => runApp(FCalculator());

class FCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Teacher got ''FCalculator
      home: CalculatorScreen(title: 'Calculadora'),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  final String title;

  CalculatorScreen({required this.title});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final calculator = Calculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          StreamBuilder(
            initialData: "0",
            stream: calculator.output,
            builder: (BuildContext context, snapshot) =>
              Display(
                content: snapshot.data,
              ),
          ),
          Keyboard(
            calculator: calculator,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.dehaze),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistoricScreen()),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    calculator.dispose();
    super.dispose();
  }

}
