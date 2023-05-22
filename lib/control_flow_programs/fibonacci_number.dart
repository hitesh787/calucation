// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class Fibonacci extends StatefulWidget {
  const Fibonacci({super.key});

  @override
  _FibonacciState createState() => _FibonacciState();
}

class _FibonacciState extends State<Fibonacci> {

  int number = 0;
  final List<int> fibonacciSequence = [];

  isGenerateFibonacciSequence() {
    setState(() {
      fibonacciSequence.clear();
      int previousNumber = 0;
      int currentNumber = 1;
      fibonacciSequence.add(previousNumber);
      fibonacciSequence.add(currentNumber);

      for(int i=2;i<number;i++)
      {
        int nextNumber = previousNumber + currentNumber;
        previousNumber = currentNumber;
        currentNumber = nextNumber;
        fibonacciSequence.add(currentNumber);
      }
      int total = 0;
      for(int i = 0;i<fibonacciSequence.length;i++){
        if(i % 2 ==0){
          total += fibonacciSequence[i];
        }

      }

      print(total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fibonacci Sequence'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter a number:',),
              onChanged: (value) {setState(() {number = int.parse(value);});},
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isGenerateFibonacciSequence,
              child: const Text('Generate Fibonacci Sequence'),
            ),
            const SizedBox(height: 16.0),
            Text('$fibonacciSequence',style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
