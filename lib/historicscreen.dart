import 'package:f_calculator/data/datasource.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class HistoricScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HistoricScreen();
}

class _HistoricScreen extends State<HistoricScreen> {
  DataSource _dataSource = DataSource.getInstance();

  @override
  void initState() {
    super.initState();

    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        if (mounted) {
          setState(() {
            _dataSource.reset();
          });
        }
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          _dataSource.reset();
        }
    );

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Histórico"),
        ),
        body: ListView.builder(
          itemCount: _dataSource.getAll().length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset('lib/assets/logo.jpg'),
                title: Text(_dataSource.getAll()[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
