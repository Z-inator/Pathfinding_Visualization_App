

import 'package:flutter/material.dart';

class AlgorithmText extends StatelessWidget {
  const AlgorithmText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Text('Dijkstra\'s Algorithm is weighted and guarantees the shortest path!', style: theme.textTheme.headline6),
    );
  }
}