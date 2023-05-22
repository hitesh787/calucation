// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  double number1 = 0;
  double number2 = 0;
  String operator = '+';
  double result = 0;

  isCalculate() {
    setState(() {
      switch (operator) {
        case '+':
          result = number1 + number2;
          break;
        case '-':
          result = number1 - number2;
          break;
        case '*':
          result = number1 * number2;
          break;
        case '/':
          result = number1 / number2;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter number 1:',),
              onChanged: (value) {setState(() {number1 = double.parse(value);});},
            ),
            const SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter number 2:',),
              onChanged: (value) {setState(() {number2 = double.parse(value);});},
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {setState(() {operator = '+';});},child: const Text('+'),),
                ElevatedButton(onPressed: () {setState(() {operator = '-';});},child: const Text('-'),),
                ElevatedButton(onPressed: () {setState(() {operator = '*';});},child: const Text('*'),),
                ElevatedButton(onPressed: () {setState(() {operator = '/';});},child: const Text('/'),),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(onPressed: isCalculate,child: const Text('='),),
            const SizedBox(height: 16.0),
            Text('Result: $result', style: const TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
