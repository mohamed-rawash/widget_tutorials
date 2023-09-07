import 'package:flutter/material.dart';

class ListTileAndCardWidgets extends StatelessWidget {
  const ListTileAndCardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      color: Colors.teal,
      elevation: 8.0,
      shadowColor: Colors.amber,
      surfaceTintColor: Colors.black87,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: const ListTile(
        title: Text("This Is ListTile Title."),
        subtitle: Text("This Is ListTile Title."),
        leading: Icon(Icons.not_started_outlined),
        trailing: Icon(Icons.label_sharp),
        style: ListTileStyle.list,
      ),
    );
  }
}
