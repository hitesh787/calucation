// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TrianglePattern extends StatefulWidget {
  const TrianglePattern({super.key});

  @override
  _TrianglePatternState createState() => _TrianglePatternState();
}

class _TrianglePatternState extends State<TrianglePattern> {

  TextEditingController inputController = TextEditingController();
  List<String> triangleList = [];

  isBuildTriangle()
  {
    int num = int.parse(inputController.text);
    setState(() {
      triangleList.clear();
      for (int i = 1; i <= num; i++)
      {
        String row = '';
        for (int j = 1; j <= i; j++)
        {
          row += '* ';
        }
        triangleList.add(row);
      }
    });
  }

//   {
//   int num = int.parse(inputController.text);
//   setState(() {
//   triangleList.clear();
//   for (int i = 1; i <= num; i++)
//   {
//   String row = '';
//   for (int j = 5; j >= i; j--)
//   {
//   row += '* ';
//   }
//   triangleList.add(row);
//   }
//   });
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Triangle Pattern'),),
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
              onPressed: isBuildTriangle,
              child: const Text('Build Triangle'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: triangleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(triangleList[index],style: const TextStyle(fontSize: 30),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
