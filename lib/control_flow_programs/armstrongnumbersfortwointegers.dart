// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';

class ArmstrongNumbersForTwoIntegers extends StatefulWidget {
  const ArmstrongNumbersForTwoIntegers({super.key});

  @override
  _ArmstrongNumbersForTwoIntegersState createState() => _ArmstrongNumbersForTwoIntegersState();
}

class _ArmstrongNumbersForTwoIntegersState extends State<ArmstrongNumbersForTwoIntegers> {

  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  String _result = '';

  isPrintArmstrongNumbers()
  {
    int? start = int.tryParse(startController.text);
    int? end = int.tryParse(endController.text);

    if (start == null || end == null) {
      setState(() {_result = 'Please enter valid integers.';});
      return;
    }

    List<int> armstrongNumbers = [];

    for (int i = start; i <= end; i++)
    {
      int sum = 0;
      int num = i;
      int numDigits = num.toString().length;
      while (num > 0) {
        int digit = num % 10;
        sum = sum + (pow(digit, numDigits) as int?)!;
        num ~/= 10;
      }
      if (sum == i) {
        armstrongNumbers.add(i);
      }
    }
    setState(() {_result = 'Armstrong numbers between $start and $end are:\n${armstrongNumbers.join(', ')}';});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Armstrong Numbers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: startController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter starting integer',
                ),
              ),
              TextField(
                controller: endController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter ending integer',
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: isPrintArmstrongNumbers,
                child: const Text('Print Armstrong numbers'),
              ),
              const SizedBox(height: 16),
              Text(_result),
            ],
          ),
        ),
      ),
    );
  }
}
