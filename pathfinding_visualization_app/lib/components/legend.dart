import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Legend extends StatelessWidget {
  Legend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: List.generate(8, (index) => Row(mainAxisSize: MainAxisSize.min, children: [icons[index], SizedBox(width: 10), Text(labels[index], style: theme.textTheme.headline6)],)),
      ),
    );
  }

  List<Widget> icons = [
    Icon(MdiIcons.sourceCommitStart, size: 30),
    Icon(MdiIcons.bullseye, size: 30),
    Icon(MdiIcons.bomb, size: 30),
    Icon(MdiIcons.weight, size: 30),
    Container(
      height: 30,
      width: 30,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.green.shade200)),
    ),
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade200),
          color: Colors.green),
    ),
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade200),
          color: Colors.yellowAccent),
    ),
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade200),
          color: Colors.black54),
    ),
  ];

  List<String> labels = [
    'Start Node',
    'Target Node',
    'Bomb Node',
    'Weight Node',
    'Unvisited Node',
    'Visited Node',
    'Shortest-path Node',
    'Wall Node'
  ];
}