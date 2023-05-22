// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ReverseNumber extends StatefulWidget {
  const ReverseNumber({super.key});

  @override
  _ReverseNumberState createState() => _ReverseNumberState();
}

class _ReverseNumberState extends State<ReverseNumber> {

  TextEditingController numberController = TextEditingController();
  int reversedNumber = 0;

  isReverseNumber()
  {
    int number = int.parse(numberController.text);
    int remainder = 0;
    while(number != 0)
    {
      remainder = number % 10; // Last Digit Of Number
      reversedNumber = reversedNumber * 10 + remainder;
      number = number ~/10;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse a Number'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: numberController,
                decoration: const InputDecoration(hintText: 'Enter a Number',),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isReverseNumber,
                child: const Text('Reverse Number'),
              ),
              const SizedBox(height: 16.0),
              if (reversedNumber != 0)
                Text('The reversed number is $reversedNumber',style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
