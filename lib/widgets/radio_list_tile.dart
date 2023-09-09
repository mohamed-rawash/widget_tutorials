import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  List<String> countries = ["Egypt", "USA", "KSA", "ufa"];
  String? country;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Choose Your Country Pls: ${country ?? '...'}", style: const TextStyle(fontSize: 28),),
        ...List<Widget>.generate(
          countries.length,
          (index) => RadioListTile(
            title: Text(countries[index].toUpperCase(), style: const TextStyle(fontSize: 24),),
            value: countries[index],
            groupValue: country,
            onChanged: (val) {
              country = val;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
