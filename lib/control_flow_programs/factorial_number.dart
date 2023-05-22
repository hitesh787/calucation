// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Factorial extends StatefulWidget {
  const Factorial({super.key});

  @override
  _FactorialState createState() => _FactorialState();
}

class _FactorialState extends State<Factorial> {

  TextEditingController numberController = TextEditingController();
  int factorial = 1;

  isCalculateFactorial()
  {
    factorial = 1;
    int number = int.parse(numberController.text);
    for (int i = number; i > 0; i--)
    {
      factorial *= i;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factorial of a Number'),
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
                onPressed: isCalculateFactorial,
                child: const Text('Calculate Factorial'),
              ),
              const SizedBox(height: 16.0),
              if (factorial != 1)
                Text('The factorial Number $factorial', style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
