// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class NumberPattern extends StatefulWidget {
  const NumberPattern({super.key});

  @override
  _NumberPatternState createState() => _NumberPatternState();
}

class _NumberPatternState extends State<NumberPattern> {

  TextEditingController inputController = TextEditingController();
  List<List<int>> numberList = [];

  isBuildNumberPattern()
  {
    int num = int.parse(inputController.text);
    List<List<int>> tempNumberList = [];
    int count = 1;

    for (int i = 1; i <= num; i++)
    {
      List<int> row = [];
      for (int j = 1; j <= i; j++)
      {
        // row.add(i);
        row.add(j);
        // row.add(count);
        // count++;
      }
      tempNumberList.add(row);
    }
    setState(() {numberList = tempNumberList;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number pattern'),),
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
              onPressed: isBuildNumberPattern,
              child: const Text('Build Number Pattern'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: numberList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(numberList[index].join(' '),style: const TextStyle(fontSize: 25),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
