// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ReverseFloydTriangle extends StatefulWidget {
  const ReverseFloydTriangle({super.key});

  @override
  _ReverseFloydTriangleState createState() => _ReverseFloydTriangleState();
}

class _ReverseFloydTriangleState extends State<ReverseFloydTriangle> {

  TextEditingController inputController = TextEditingController();
  List<List<int>> reverseFloydsTriangle = [];

  isBuildReverseFloydsTriangle()
  {
    String inputString = inputController.text;
    int inputInt = int.tryParse(inputString)!;
    List<List<int>> tempReverseFloydsTriangle = [];

    int count = (inputInt * (inputInt + 1)) ~/ 2;

    for (int i = 0; i < inputInt; i++)
    {
      List<int> row = [];
      for (int j = 0; j <= i; j++)
      {
        row.add(count);
        count--;
      }
      tempReverseFloydsTriangle.insert(0, row);
    }
    setState(() {reverseFloydsTriangle = tempReverseFloydsTriangle;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reverse Floyd Pattern Triangle Pyramid'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isBuildReverseFloydsTriangle,
              child: const Text('Build Reverse Floyd\'s Triangle'),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: reverseFloydsTriangle.map((row) {
                return Text(
                  row.join(' '),
                  style: const TextStyle(fontSize: 24),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
