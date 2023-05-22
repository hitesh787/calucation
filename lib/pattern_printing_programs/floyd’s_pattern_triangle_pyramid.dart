// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class FloydTriangle extends StatefulWidget {
  const FloydTriangle({super.key});

  @override
  _FloydTriangleState createState() => _FloydTriangleState();
}

class _FloydTriangleState extends State<FloydTriangle> {

  TextEditingController inputController = TextEditingController();
  List<List<int>> floydsTriangle = [];

  isBuildFloydsTriangle()
  {
    String inputString = inputController.text;
    int inputInt = int.tryParse(inputString)!;
    List<List<int>> tempFloydsTriangle = [];
    int count = 1;

    for (int i = 0; i < inputInt; i++)
    {
      List<int> row = [];
      for (int j = 0; j <= i; j++)
      {
        row.add(count);
        count++;
      }
      tempFloydsTriangle.add(row);
    }
    setState(() {floydsTriangle = tempFloydsTriangle;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floyds Pattern triangle Pyramid'),),
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
              onPressed: isBuildFloydsTriangle,
              child: const Text('Build Floyd\'s Triangle'),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: floydsTriangle.map((row) {
                return Text(row.join(' '), style: const TextStyle(fontSize: 24),);}).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
