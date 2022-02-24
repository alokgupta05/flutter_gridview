import 'package:flutter/material.dart';
import 'grid_view_widget.dart';

void main() {
  runApp(const GridViewApp());
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        title: "Grid Demo",
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const GridViewWidget());
  }
}
