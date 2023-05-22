// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PrimeChecker extends StatefulWidget {
  const PrimeChecker({super.key});

  @override
  _PrimeCheckerState createState() => _PrimeCheckerState();
}

class _PrimeCheckerState extends State<PrimeChecker> {

  TextEditingController textEditingController = TextEditingController();
  bool flag = false;

  isCheckPrime(String text)
  {
    final n = int.tryParse(text);
    setState(() {flag = isPrime(n!);});
  }

  bool isPrime(int n) {
    for(int i = 2 ; i < n ; i++)
    {
      if (n % i == 0)
      {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(hintText: 'Enter a number',),
              keyboardType: TextInputType.number,
              onChanged: isCheckPrime,
            ),
            const SizedBox(height: 16.0),
            Text(flag ? 'Prime!' : 'Not prime',style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
