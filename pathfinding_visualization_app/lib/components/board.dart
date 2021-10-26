import 'package:flutter/material.dart';
import 'package:pathfinding_visualization_app/components/node.dart';

class NodeBoard extends StatefulWidget {
  NodeBoard({Key? key}) : super(key: key);

  @override
  _NodeBoardState createState() => _NodeBoardState();
}

class _NodeBoardState extends State<NodeBoard> with TickerProviderStateMixin {
  final GlobalKey boardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Table(
            border: TableBorder.all(color: Colors.green.shade200),
            children: List.generate(
                16,
                (rowIndex) => TableRow(
                      children: List.generate(
                          60,
                          (columnIndex) => DragTarget(
                                builder:
                                    (context, candidateItems, rejectedItems) {
                                  return NodeBox(
                                      node: Node(
                                          rowID: rowIndex,
                                          columnID: columnIndex,
                                      ));
                                },
                              )),
                    ))));
  }
}
