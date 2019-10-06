import 'blocks.dart';
import 'package:flutter/material.dart';

class Preview extends StatelessWidget {

  final List<double> values;

  Preview({Key key, this.values}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: BlocksList(this.values),
    ),
    );
  }
}