// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SwapNumber extends StatefulWidget {
  const SwapNumber({super.key});

  @override
  _SwapNumberState createState() => _SwapNumberState();
}

class _SwapNumberState extends State<SwapNumber> {

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  void _swapNumbers() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);

    setState(() {
      num1Controller.text = num2.toString();
      num2Controller.text = num1.toString();
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swap Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _swapNumbers,
              child: const Text('Swap'),
            ),
            Text("Number ${num1Controller.text}"),
            Text("Number ${num2Controller.text}"),

          ],
        ),
      ),
    );
  }
}
