import 'package:flutter/material.dart';

class NodeBox extends StatefulWidget {
  final Node node;

  const NodeBox({Key? key, required this.node}) : super(key: key);

  @override
  _NodeBoxState createState() => _NodeBoxState();
}

class _NodeBoxState extends State<NodeBox> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.node == 'normal') {
            widget.node.setStatus('blocked');
          } else {
            widget.node.setStatus('normal');
          }
        });
      },
      child:
          DragTarget<Node>(builder: (context, candidateItems, rejectedItems) {
        return Container(
          height: 30,
          width: 30,
          color: isPressed ? Colors.black54 : Colors.transparent,
        );
      }),
    );
  }
}

class Node {
  final int rowID;
  final int columnID;
  String status;

  Node({
    required this.rowID,
    required this.columnID,
    required this.status,
  });

  void setStatus(String newStatus) {
    switch (newStatus) {
      case 'blocked':
        this.status = 'blocked';
        break;
      case 'normal':
        this.status = 'normal';
        break;
      case 'start':
        this.status = 'start';
        break;
      case 'end':
        this.status = 'end';
        break;
      default:
        this.status = 'normal';
    }
  }
}
