import "dart:async";
import 'package:expressions/expressions.dart';
import 'package:f_calculator/data/datasource.dart';

class Calculator {
  DataSource _dataSource = DataSource.getInstance();

  String _content = "0";

  StreamController _controller = StreamController();
  Sink get _input => _controller.sink;
  Stream get output => _controller.stream;

  void onClear() {
    _content = "0";
    _input.add(_content);
  }

  void onRemoveLast() {
    if(_content.length != 1 && _content[0] != "0") {
      _content = _content.substring(0, _content.length - 1);
    } else {
      _content = "0";
    }
    _input.add(_content);
  }

  void onReceiveSymbol(symbol) {
    _content = _content == null ? symbol : _content += symbol;
    if(_content.length == 2 && _content[0] == "0") {
      _content = _content.substring(1, _content.length);
    }
    _input.add(_content);
  }

  void onEquals() {
    final expression = Expression.parse(_content);
    _content = ExpressionEvaluator().eval(expression, {}).toString();
    _input.add(_content);
    _dataSource.insert(expression.toString() + "=" + _content);

  }

  void dispose() => _controller.close();
}