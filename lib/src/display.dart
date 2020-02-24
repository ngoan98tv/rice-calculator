import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final value;
  final onBackspace;

  Display({Key key, this.value = 0, this.onBackspace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white70),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "${this.value}",
                textAlign: TextAlign.right,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              color: Colors.redAccent,
              margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
              width: 52.0,
              child: IconButton(
                icon: Icon(Icons.backspace),
                onPressed: this.onBackspace,
              ),
            )
          ],
        ));
  }
}
