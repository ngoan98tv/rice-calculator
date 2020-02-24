import 'package:flutter/material.dart';
import 'keyboard.dart';
import 'display.dart';
import 'preview.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _input = "";
  List<double> _store = List();

  handleClick(String value) {
    if (value != 'OK') {
      this.setState(() {
        _input += value;
      });
    } else {
      if (_input != "")
        this.setState(() {
          _store.add(double.parse(_input));
          _input = "";
        });
    }
  }

  handleBackSpace() {
    if (_input != "") {
      this.setState(() {
        _input = _input.substring(0, _input.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Máy tính chuyên dụng"),
      ),
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Preview(values: this._store)),
          Container(
            margin: EdgeInsets.all(12),
            child: Display(
              value: _input,
              onBackspace: this.handleBackSpace,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: KeyBoard(onClick: this.handleClick),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
