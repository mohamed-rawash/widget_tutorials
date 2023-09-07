import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:widgets_tutorials/hive/hive.dart';

import 'package:widgets_tutorials/widgets/list_tile_and_card.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Box box;
  @override
   void initState() {
    testCase();
    super.initState();
  }

  testCase() async {
    box = await HiveHelper.openHiveBox(boxName: "name");
    box.put("obj", {"name": "Mohamed", "age": 24,});
    print("*-* " * 10);
    print(box.get("obj"));
    print("*-* " * 10);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Widgets Tutorials"),
        ),
        body: const ListTileAndCardWidgets(),
      ),
    );
  }
}
