// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ArmstrongNumbersRange extends StatefulWidget {
  const ArmstrongNumbersRange({super.key});

  @override
  _ArmstrongNumbersRangeState createState() => _ArmstrongNumbersRangeState();
}

class _ArmstrongNumbersRangeState extends State<ArmstrongNumbersRange> {
  List<int> ArmstrongNumbersRange = [];

  isFindArmstrongNumbersRange() {
   
    setState(() {
      ArmstrongNumbersRange.clear();
      for (int i = 1; i <= 1000; i++)
      {
        int sum = 0;
        int temp = i;
        while (temp > 0)
        {
          final int digit = temp % 10;
          sum += digit * digit * digit ;
          temp ~/= 10;
        }
        if (sum == i) {ArmstrongNumbersRange.add(i);}
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Armstrong Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isFindArmstrongNumbersRange,
              child: const Text('Find Armstrong Numbers'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: ArmstrongNumbersRange.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(ArmstrongNumbersRange[index].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
