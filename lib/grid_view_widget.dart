import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid View Demo"),
        ),
        body: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isPortrait ? 2 : 3),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: GridTile(
                      footer: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text('Section $index')),
                      child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/images/yoga.jpg")))))));
            }));
  }
}
