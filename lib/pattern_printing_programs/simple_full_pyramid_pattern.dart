// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class SimpleFullPyramidPattern extends StatefulWidget {
  const SimpleFullPyramidPattern({super.key});

  @override
  _SimpleFullPyramidPatternState createState() => _SimpleFullPyramidPatternState();
}

class _SimpleFullPyramidPatternState extends State<SimpleFullPyramidPattern> {

  TextEditingController inputController = TextEditingController();
  List<String> pyramidList = [];

  isSimpleFullPyramidPattern()
  {
    int num = int.parse(inputController.text);

    setState(() {
      pyramidList.clear();
      for (int i = 1; i <= num; i++)
      {
        String row = '';
        for (int j = 1; j <= num - i; j++)
        {
          row += ' ';
        }
        for (int k = 1; k <= 2 * i - 1; k++)
        {
          row += '*';
        }
        pyramidList.add(row);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Full Pyramid Pattern'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isSimpleFullPyramidPattern,
              child: const Text('Build Pyramid'),
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
