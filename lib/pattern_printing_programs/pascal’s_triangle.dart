// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class PascalTriangle extends StatefulWidget {
  const PascalTriangle({super.key});

  @override
  _PascalTriangleState createState() => _PascalTriangleState();
}

class _PascalTriangleState extends State<PascalTriangle> {

  TextEditingController inputController = TextEditingController();
  List<List<int>> pascalsTriangle = [];

  isBuildPascalsTriangle()
  {
    String inputString = inputController.text;
    int inputInt = int.tryParse(inputString)!;
    List<List<int>> tempPascalsTriangle = [];


    for (int i = 0; i < inputInt; i++)
    {
      List<int> row = [];
      for (int j = 0; j <= i; j++)
      {
        if (j == 0 || j == i)
        {
          row.add(1);
        } else
        {
          row.add(tempPascalsTriangle[i - 1][j - 1]+tempPascalsTriangle[i - 1][j]);
        }
      }
      tempPascalsTriangle.add(row);
      print(tempPascalsTriangle);
    }
    setState(() {pascalsTriangle = tempPascalsTriangle;});
    print(pascalsTriangle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('pascals Triangle'),),
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
              onPressed: isBuildPascalsTriangle,
              child: const Text('Build Pascal\'s Triangle'),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pascalsTriangle.map((row) {
                return Text(row.join(' '),style: const TextStyle(fontSize: 24),);}).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
