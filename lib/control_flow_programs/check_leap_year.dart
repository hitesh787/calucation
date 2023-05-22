// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LeapYear extends StatefulWidget {
  const LeapYear({super.key});

  @override
  _LeapYearState createState() => _LeapYearState();
}

class _LeapYearState extends State<LeapYear> {

  TextEditingController yearController = TextEditingController();
  String result = '';

  isCheckLeapYear()
  {
    int year = int.parse(yearController.text);

    if (year % 400 == 0 || year % 4 == 0 && year % 100 != 0)
    {
      result = 'Leap Year';
    } else {
      result = 'Not a Leap Year';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leap Year Checker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: yearController,
                maxLength: 4,
                decoration: const InputDecoration(hintText: 'Enter a Year',),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isCheckLeapYear,
                child: const Text('Check'),
              ),
              const SizedBox(height: 16.0),
              Text('Result: $result', style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
