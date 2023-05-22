// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NeonNumbersInRange extends StatefulWidget {
  const NeonNumbersInRange({super.key});

  @override
  _NeonNumbersInRangeState createState() => _NeonNumbersInRangeState();
}

class _NeonNumbersInRangeState extends State<NeonNumbersInRange> {

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  List<int> _neonNumbers = [];

  isCheckNeonNumbers(String text1, String text2)
  {
    final int m = int.tryParse(text1)!;
    final int n = int.tryParse(text2)!;
    final List<int> neonNumbers = [];

    for (int i = m; i <= n; i++)
    {
      final int sumOfDigitsSquared = getSumOfDigitsSquared(i);
      if (sumOfDigitsSquared == i) {
        neonNumbers.add(i);
      }
    }
    setState(() {_neonNumbers = neonNumbers;});
  }

  int getSumOfDigitsSquared(int n)
  {
    int sum = 0;
    int square = n * n;
    while (square != 0)
    {
      sum = sum + square % 10;
      square = square ~/ 10;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neon Numbers in Range'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController1,
              decoration: const InputDecoration(hintText: 'Enter the first number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: textEditingController2,
              decoration: const InputDecoration(hintText: 'Enter the second number'),
              keyboardType: TextInputType.number,
              onChanged: (text) => isCheckNeonNumbers(textEditingController1.text, textEditingController2.text),),
            const SizedBox(height: 16.0),
            Text("$_neonNumbers")
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: _neonNumbers.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(_neonNumbers[index].toString()),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
