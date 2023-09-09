import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({super.key});

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {

  bool _status = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text("Switch Test"),
      value: _status,
      onChanged: (status){
        _status = status;
        setState(() {});
      },
    );
  }
}
