import 'package:flutter/material.dart';
import 'package:untitled/components/TasklistItem/TasklistItem.dart';
import 'models/DataForList.dart';
import 'package:collection/collection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: MyHomePage(title: 'Advent of Code 2025'),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final  List<DataForList> data = [
    new DataForList(
      '              ____           *\n            ________/O___\\__________|________________________  ',
      false,
    ),
    new DataForList(
      '        _______||_________\n               | _@__ || _o_    |_ _________________________   ',
      false,
    ),
    new DataForList(
      '        |_&_%__||_oo__^=_[ \\|     _    .. .. ..     |\n                                 \\_]__--|_|___[]_[]_[]__//_|   ',
      false,
    )
  ];

  MyHomePage({super.key, required this.title});
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(this.title),
      ),
      body:  Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select task to see solution'),
            ...data.mapIndexed((index, el) => new TasklistItem(id: index + 1, data: el))
          ]
        ),
      ),
    );
  }
}
