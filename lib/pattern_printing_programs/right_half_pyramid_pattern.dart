// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class RightHalfPyramidPattern extends StatefulWidget {
  const RightHalfPyramidPattern({super.key});

  @override
  _RightHalfPyramidPatternState createState() => _RightHalfPyramidPatternState();
}

class _RightHalfPyramidPatternState extends State<RightHalfPyramidPattern> {

  int rows = 0;
  String pattern = '';

  isRightHalfPyramidPattern()
  {
    setState(() {
      pattern = '';
      for(int i=1; i<rows; i++)
      {
        for(int j=i;j<5;j++)
        {
          pattern += ' ';
        }
        for(int k=1;k<=i;k++)
        {
          pattern += '* ';
        }
        pattern += '\n';
      }
    });
  }
  // TextEditingController inputController = TextEditingController();
  // List<String> pyramidList = [];
  //
  // isRightHalfPyramidPattern()
  // {
  //   int num = int.parse(inputController.text);
  //   setState(() {
  //     pyramidList.clear();
  //     for (int i = 0; i <= num; i++)
  //     {
  //       String row = '';
  //       for (int j = i; j <= 5; j++)
  //       {
  //         row += ' ';
  //         // if (j <= num - i)
  //         // {
  //         //   row += ' ';
  //         // } else {
  //         //   row += '*';
  //         // }
  //       }
  //       for(int k=1;k<=i;k++)
  //       {
  //         row += '*';
  //       }
  //       pyramidList.add(row);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Right Half Pyramid pattern'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              // controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isRightHalfPyramidPattern,
              child: const Text('Build Pyramid'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(pattern,style: const TextStyle(fontSize: 20),),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: pyramidList.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Text(pyramidList[index],style: const TextStyle(fontSize: 30),);
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
