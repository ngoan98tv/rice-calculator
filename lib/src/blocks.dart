import 'package:flutter/material.dart';

TableRow _rowNum(double value) {
  return TableRow(children: [
    TableCell(
      child: Text(
        "${value.toStringAsFixed(1)}",
        style: TextStyle(fontFamily: 'monospace', fontSize: 14),
        textAlign: TextAlign.right,
      ),
    )
  ]);
}

TableRow _rowSum(double value) {
  return TableRow(children: [
    TableCell(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
        padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
        child: Text(
          "${value.toStringAsFixed(1)}",
          style: TextStyle(fontFamily: 'monospace', fontSize: 14),
          textAlign: TextAlign.right,
        ),
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: Colors.white))),
      ),
    )
  ]);
}

class Block extends StatelessWidget {
  final List<double> values;

  Block({Key key, this.values}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sum = 0;
    List<TableRow> items = List();
    this.values.forEach((value) {
      sum += value;
      items.add(_rowNum(value));
    });
    items.add(_rowSum(sum));
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.fromLTRB(6, 12, 6, 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white54),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Table(children: items),
    );
  }
}

List<Widget> BlocksList(List<double> values) {
  List<List<double>> blocks = List();

  for (int i = 0; i < values.length; i += 5) {
    blocks.add(
        values.sublist(i, (i + 5 < values.length) ? i + 5 : values.length));
  }

  blocks = blocks.reversed.toList();

  return List.generate(blocks.length, (index) => Block(values: blocks[index]));
}
