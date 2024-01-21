import 'dart:math';

import 'package:flutter/material.dart';

class RendomizerView extends StatefulWidget {
  final int min, max;
  const RendomizerView({super.key, required this.min, required this.max});

  @override
  State<RendomizerView> createState() => _RendomizerViewState();
}

class _RendomizerViewState extends State<RendomizerView> {
  int? _generatedNumber;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer"),
      ),
      body: Center(
        child: Text(
          _generatedNumber?.toString() ?? 'Generate a number',
          style: const TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Generate'),
          onPressed: () {
            setState(() {
              _generatedNumber = widget.min +
                  randomGenerator.nextInt(widget.max + 1 - widget.min);
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
