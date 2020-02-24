import 'package:flutter/material.dart';

Widget _button(String text, Function onClick) {
  return Expanded(
    child: FlatButton(
      padding: EdgeInsets.all(20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24, 
          fontWeight: FontWeight.w700
        ),
      ),
      onPressed: () => onClick(text),
    ),
  );
}

class KeyBoard extends StatelessWidget {
  final onClick;

  KeyBoard({Key key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              _button('7', this.onClick),
              _button('8', this.onClick),
              _button('9', this.onClick),
            ],
          ),
          Row(
            children: <Widget>[
              _button('4', this.onClick),
              _button('5', this.onClick),
              _button('6', this.onClick),
            ],
          ),
          Row(
            children: <Widget>[
              _button('1', this.onClick),
              _button('2', this.onClick),
              _button('3', this.onClick),
            ],
          ),
          Row(
            children: <Widget>[
              _button('.', this.onClick),
              _button('0', this.onClick),
              _button('OK', this.onClick),
            ],
          )
        ],
      ),
    );
  }
}
