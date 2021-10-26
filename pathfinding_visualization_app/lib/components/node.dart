import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NodeBox extends StatefulWidget {
  final Node node;

  const NodeBox({Key? key, required this.node}) : super(key: key);

  @override
  _NodeBoxState createState() => _NodeBoxState();
}

class _NodeBoxState extends State<NodeBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.node.setBlock();
          });
        },
        child: Container(
          height: 30,
          width: 30,
          color: widget.node.isBlocked ? Colors.black54 : Colors.transparent,
          child: buildChild(),
        ));
  }

  Widget buildChild() {
    if (widget.node.isStart) {
      return Icon(MdiIcons.sourceCommitStart);
    } else if(widget.node.isFinish) {
      return Icon(MdiIcons.bullseye);
    } else {
      return Container();
    }
  }
}

class SpecialNode extends StatefulWidget {
  SpecialNode({Key? key}) : super(key: key);

  @override
  _SpecialNodeState createState() => _SpecialNodeState();
}

class _SpecialNodeState extends State<SpecialNode> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Node {
  final int rowID;
  final int columnID;
  // String status;
  bool isBlocked = false;
  bool isStart = false;
  bool isFinish = false;

  Node({
    required this.rowID,
    required this.columnID,
    // required this.status,
  });

  void setBlock() {
    isBlocked = !isBlocked;
  }
}
