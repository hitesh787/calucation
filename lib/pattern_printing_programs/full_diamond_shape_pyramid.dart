// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class DiamondShape extends StatefulWidget {
  const DiamondShape({super.key});

  @override
  _DiamondShapeState createState() => _DiamondShapeState();
}

class _DiamondShapeState extends State<DiamondShape> {

  TextEditingController inputController = TextEditingController();
  List<String> pyramidList = [];

  isBuildDiamondShape()
  {
    int num = int.parse(inputController.text);
    setState(() {
      pyramidList.clear();
      int space = num-1;
      // Top Star Pattern
      for (int i = 0; i <= num; i++)
      {
        String row = ' ';
        for (int j = 0; j <= space; j++)
        {
          row += '  ';
        }
        for (int k = 0; k <= i; k++)
        {
          row += ' * ';
        }
        pyramidList.add(row);
        space--;
      }

      // Bottom Star Pattern
      space = 0;
      for (int i = num-1; i >= 0; i--)
      {
        String row = ' ';
        for (int j = 0; j <= space; j++)
        {
          row += '  ';
        }
        for (int k = 0; k <= i; k++)
        {
          row += ' * ';
        }
        pyramidList.add(row);
        space++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Full Diamond Shape Pyramid'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a Number',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isBuildDiamondShape,
              child: const Text('Build Full Diamond Shape Pyramid'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pyramidList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(pyramidList[index],style: const TextStyle(fontSize: 30),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
