import 'package:flutter/material.dart';
import 'package:pathfinding_visualization_app/components/node_box.dart';
import 'package:pathfinding_visualization_app/models/node.dart';


class NodeBoard extends StatelessWidget {
  const NodeBoard({Key? key}) : super(key: key);

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
                          (columnIndex) => NodeBox(
                              node:
                                  Node(rowID: rowIndex, columnID: columnIndex))
                          ),
                    ))));
  }
}

// class NodeBoard extends StatefulWidget {
//   NodeBoard({Key? key}) : super(key: key);

//   @override
//   _NodeBoardState createState() => _NodeBoardState();
// }

// class _NodeBoardState extends State<NodeBoard> {
//   final GlobalKey boardKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Table(
//             border: TableBorder.all(color: Colors.green.shade200),
//             children: List.generate(
//                 16,
//                 (rowIndex) => TableRow(
//                       children: List.generate(
//                           60,
//                           (columnIndex) => NodeBox(
//                               node:
//                                   Node(rowID: rowIndex, columnID: columnIndex))
//                           // DragTarget<Node>(
//                           //       builder:
//                           //           (context, candidateItems, rejectedItems) {
//                           //         return NodeBox(
//                           //             node: Node(
//                           //                 rowID: rowIndex,
//                           //                 columnID: columnIndex,
//                           //             ));
//                           //       },
//                           //     )
//                           ),
//                     ))));
//   }
// }
