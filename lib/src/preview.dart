import 'blocks.dart';
import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  final List<double> values;

  Preview({Key key, this.values}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120, 
            childAspectRatio: 9 / 16
          ),
        children: BlocksList(this.values),
        reverse: true,
      ),
    );
  }
}
