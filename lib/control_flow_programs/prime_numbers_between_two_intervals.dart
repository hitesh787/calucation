// ignore_for_file: library_private_types_in_public_api

import 'dart:math';
import 'package:flutter/material.dart';

class PrimeNumbersBetweenIntervals extends StatefulWidget {
  const PrimeNumbersBetweenIntervals({super.key});

  @override
  _PrimeNumbersBetweenIntervalsState createState() => _PrimeNumbersBetweenIntervalsState();
}

class _PrimeNumbersBetweenIntervalsState extends State<PrimeNumbersBetweenIntervals> {

   TextEditingController textEditingController1 = TextEditingController();
   TextEditingController textEditingController2 = TextEditingController();
   List<int> _primeNumbers = [];

  isDisplayPrimeNumbers(String text1, String text2)
  {
    final m = int.tryParse(text1)!;
    final n = int.tryParse(text2)!;
    final List<int> primes = [];

    for (int i = m; i <= n; i++) {
      if (isPrime(i)) {
        primes.add(i);
      }
    }
    setState(() {_primeNumbers = primes;});
  }

  bool isPrime(int n)
  {
    for (int i = 2; i < n; i++)
    {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Numbers Between Intervals'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              TextField(
                controller: textEditingController1,
                decoration: const InputDecoration(
                  hintText: 'Enter the first number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: textEditingController2,
                decoration: const InputDecoration(hintText: 'Enter the second number',),
                keyboardType: TextInputType.number,
                onChanged: (text) => isDisplayPrimeNumbers(textEditingController1.text,textEditingController2.text),),
              const SizedBox(height: 16.0),
              Text('$_primeNumbers',style: const TextStyle(fontSize: 20),)
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: _primeNumbers.length,
              //     itemBuilder: (context, index) {
              //       return ListTile(title: Text(_primeNumbers[index].toString()));
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
