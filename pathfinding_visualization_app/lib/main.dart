import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pathfinding_visualization_app/components/algorithm_text.dart';
import 'package:pathfinding_visualization_app/components/board.dart';
import 'package:pathfinding_visualization_app/components/legend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1024.0;
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = isLargeScreen(context);
    // Widget body;
    // if (isDesktop) {
    //   body = Container(
    //     padding: EdgeInsets.symmetric(horizontal: 10),
    //     child: Table(
    //       border: TableBorder.all(color: Colors.green.shade200),
    //       children: List.generate(
    //           16,
    //           (rowIndex) => TableRow(
    //               children: List.generate(
    //                   60,
    //                   (columnIndex) =>
    //                       Node(rowID: rowIndex, columnID: columnIndex)))),
    //     ),
    //   );
    //   // Row(
    //   //   mainAxisSize: MainAxisSize.max,
    //   //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   //   children: List.generate(
    //   //       60,
    //   //       (index) => Expanded(
    //   //             child: Column(
    //   //               // mainAxisSize: MainAxisSize.max,
    //   //               // crossAxisAlignment: CrossAxisAlignment.stretch,
    //   //               children: List.generate(16, (index) => Block()),
    //   //             ),
    //   //           )),
    //   // );
    // } else {
    //   body = Container(
    //     padding: EdgeInsets.symmetric(horizontal: 10),
    //     child: Table(
    //       border: TableBorder.all(color: Colors.green.shade200),
    //       children: List.generate(
    //           60,
    //           (rowIndex) => TableRow(
    //               children: List.generate(
    //                   16,
    //                   (columnIndex) =>
    //                       Node(rowID: rowIndex, columnID: columnIndex)))),
    //     ),
    //   );
    //   // Row(
    //   //   mainAxisSize: MainAxisSize.max,
    //   //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   //   children: List.generate(
    //   //       16,
    //   //       (index) => Column(
    //   //             // mainAxisSize: MainAxisSize.max,
    //   //             // crossAxisAlignment: CrossAxisAlignment.stretch,
    //   //             children: List.generate(60, (index) => Block()),
    //   //           )),
    //   // );
    // }
    return Container(
      child: SafeArea(
          top: !isDesktop,
          bottom: !isDesktop,
          child: Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  Legend(),
                  AlgorithmText(),
                  NodeBoard(),
                ],
              ))),
    );
  }
}
