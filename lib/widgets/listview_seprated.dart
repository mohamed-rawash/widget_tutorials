import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  static const List<String> items = ["Mohamed", "Ali", "Hussine", "Metwally", "Abo Trekaa", "Mohamed", "Ali", "Hussine", "Metwally", "Abo Trekaa", "Mohamed", "Ali", "Hussine", "Metwally", "Abo Trekaa", "Mohamed", "Ali", "Hussine", "Metwally", "Abo Trekaa"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        child: Text(items[index]),
      ),
    );
  }
}
