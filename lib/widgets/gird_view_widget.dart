import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});
  static  List<Widget> items = [
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: const Text("He'd have you all unravel at the"),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[200],
      child: const Text('Heed not the rabble'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[300],
      child: const Text('Sound of screams but the'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child: const Text('Who scream'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[500],
      child: const Text('Revolution is coming...'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[600],
      child: const Text('Revolution, they...'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10, maxCrossAxisExtent: 2,
      ), itemBuilder: (BuildContext context, int index) => items[index],
    );
  }
}
