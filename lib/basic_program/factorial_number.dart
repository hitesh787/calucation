// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FactorialScreen extends StatefulWidget {
  const FactorialScreen({super.key});

  @override
  _FactorialScreenState createState() => _FactorialScreenState();
}

class _FactorialScreenState extends State<FactorialScreen> {

  int _number = 0;
  int _calculateFactorial(int n)
  {
    int result = 1;
    for (int i = 1; i <= n; i++)
    {
      result *= i;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factorial Calculator'),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {setState(() {_number = int.tryParse(value) ?? 0;});},
            decoration: const InputDecoration(labelText: 'Enter a number',),),
          const SizedBox(height: 20),
          Text('Factorial of $_number is ${_calculateFactorial(_number)}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
        ],
      ),
    );
  }
}