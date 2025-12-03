import 'package:flutter/material.dart';
import 'package:untitled/models/DataForList.dart';

class EmptySolutionPage extends StatelessWidget {
  const EmptySolutionPage({super.key, required this.data});

  final DataForList data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
