// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ArmstrongNumber extends StatefulWidget {
  const ArmstrongNumber({super.key});

  @override
  _ArmstrongNumberState createState() => _ArmstrongNumberState();
}

class _ArmstrongNumberState extends State<ArmstrongNumber> {

  // TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  String result = '';

  isCheckArmstrongNumber(String text)
  {
    final int number = int.tryParse(text)!;
    int sum = 0;
    int temp = number;
    while (temp > 0) {
      final int digit = temp % 10;
      sum = sum + (digit * digit * digit);
      temp = temp ~/ 10;
    }
    if (sum == number) {
      setState(() {result = '$number is an Armstrong number.';});
    } else {
      setState(() {result = '$number is not an Armstrong number.';});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Armstrong Number Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController2,
              decoration: const InputDecoration(hintText: 'Enter a number',),
              keyboardType: TextInputType.number,
              onChanged: (text) => isCheckArmstrongNumber(text),
            ),
            const SizedBox(height: 16.0),
              Text(result),

          ],
        ),
      ),
    );
  }
}
