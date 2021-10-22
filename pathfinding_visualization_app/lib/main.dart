import 'package:flutter/material.dart';

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
    Widget body;
    if (isDesktop) {
      body = Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(60, (index) => Expanded(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(16, (index) => Block()),
          ),
        )),
      );
    } else {
      body = Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(16, (index) => Column(
          // mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(60, (index) => Block()),
        )),
      );
    }
    return Container(
      child: SafeArea(
        top: !isDesktop,
        bottom: !isDesktop,
        child: Scaffold(
          appBar: AppBar(),
          body: body
        )
      ),
    );
  }
}


class Block extends StatefulWidget {
  Block({Key? key}) : super(key: key);

  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade200)
        ),
      ),
    ));
  }
}