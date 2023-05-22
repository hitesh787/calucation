// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class SumOfNaturalNumbers extends StatefulWidget {
  const SumOfNaturalNumbers({super.key});

  @override
  _SumOfNaturalNumbersState createState() => _SumOfNaturalNumbersState();
}

class _SumOfNaturalNumbersState extends State<SumOfNaturalNumbers> {

  TextEditingController numberController = TextEditingController();
  int sum = 0;

  isCalculateSum()
  {
    sum = 0;
    int number = int.parse(numberController.text);
    for (int i = 1; i <= number; i++)
    {
      sum += i;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum of First n Natural Numbers'),
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
                onPressed: isCalculateSum,
                child: const Text('Calculate Sum'),
              ),
              const SizedBox(height: 16.0),
              if (sum != 0)
                Text('The sum of the first natural numbers is $sum',style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
