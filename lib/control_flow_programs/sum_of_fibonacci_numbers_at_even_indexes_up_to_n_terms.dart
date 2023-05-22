// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class FibonacciSum extends StatefulWidget {
  const FibonacciSum({super.key});

  @override
  _FibonacciSumState createState() => _FibonacciSumState();
}

class _FibonacciSumState extends State<FibonacciSum> {
  int number = 0;
  String  result = '';

  final List<int> fibonacciSequence = [];
  isCalculateFibonacciSum()
  {
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
      print(fibonacciSequence);
      int total = 0;
      for(int i = 0;i<fibonacciSequence.length;i++){
        if(i % 2 ==0){
          total += fibonacciSequence[i];
        }

      }
      setState(() {result=  '$total fibonacci Sequence';});
      // print(total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fibonacci Sum'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter a number of terms:'),
              onChanged: (value) {
                setState(() {number = int.parse(value);});
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isCalculateFibonacciSum,
              child: const Text('Calculate Fibonacci Sum'),
            ),
            const SizedBox(height: 16.0),
            Text("Result :  $result ",style: const TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}




















// isCalculateFibonacciSum() {
//   setState(() {
//     int previousNumber = 0;
//     int currentNumber = 1;
//     int fibNumber = 0;
//     int index = 0;
//     _sum = 0;
//     while (index < number) {
//       if (index % 2 == 0) {
//         _sum += fibNumber;
//       }
//       fibNumber = previousNumber + currentNumber;
//       previousNumber = currentNumber;
//       currentNumber = fibNumber;
//       index++;
//     }
//   });
// }