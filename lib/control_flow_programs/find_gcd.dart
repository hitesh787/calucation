// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class FindGCD extends StatefulWidget {
  const FindGCD({super.key});

  @override
  _FindGCDState createState() => _FindGCDState();
}

class _FindGCDState extends State<FindGCD> {

  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  int gcd = 1;

  isCalculateGCD()
  {
    int number1 = int.parse(number1Controller.text);
    int number2 = int.parse(number2Controller.text);

    int remainder = 0;
    int dividend = number1;
    int divisor = number2;

    while (divisor != 0)
    {
      remainder = dividend % divisor;
      dividend = divisor;
      divisor = remainder;
    }
    gcd = dividend;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find GCD'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: number1Controller,
                decoration: const InputDecoration(
                  hintText: 'Enter First Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: number2Controller,
                decoration: const InputDecoration(
                  hintText: 'Enter Second Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isCalculateGCD,
                child: const Text('Find GCD'),
              ),
              const SizedBox(height: 16.0),
              if (gcd != 1)
                Text('The GCD of ${number1Controller.text} and ${number2Controller.text} is $gcd',style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
